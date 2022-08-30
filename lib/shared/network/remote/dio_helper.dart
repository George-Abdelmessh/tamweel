import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/hud/hud_provider.dart';
import 'package:tamweel/shared/network/end_points.dart';

class DioHelper {
  static Dio? dio;

  static ProviderContainer? providerContainer;
  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: '${AppEndPoints.baseUrl}/api/',
        receiveDataWhenStatusError: true,
      ),
    );
    providerContainer = ProviderContainer();

    dio!.interceptors.addAll({
      AppInterceptors(dio!, providerContainer!),
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    });

    return;
  }

  static Future<Response> getDate({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token ?? '',
    };
    return dio!.get(url, queryParameters: query);
  }

  static Future<Response> postDate({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token = '',
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token,
    };
    return dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

  static Future<Response> putDate({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token = '',
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token,
    };
    return dio!.put(
      url,
      queryParameters: query,
      data: data,
    );
  }

}

/// An interceptor that handles the error responses from a [Dio] request.
class AppInterceptors extends Interceptor {
  AppInterceptors(this.dio, this.providerContainer);

  /// The [Dio] instance used to handle all requests.
  final Dio dio;

  //Provider container which holds the state of all my providers
  //This would normally be inaccessible inside of the ProviderScope
  final ProviderContainer providerContainer;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    //Show loading indicator
    final provider = providerContainer.read(isLoadingProvider.notifier);
    provider.show();
    //TODO: Manage Access token here

    // // var accessToken = await TokenRepository().getAccessToken();

    // if (accessToken != null) {
    //   var expiration = await TokenRepository().getAccessTokenRemainingTime();

    //   if (expiration.inSeconds < 60) {
    //     dio.interceptors.requestLock.lock();

    //     // Call the refresh endpoint to get a new token
    //     await UserService()
    //         .refresh()
    //         .then((response) async {
    //       await TokenRepository().persistAccessToken(response.accessToken);
    //       accessToken = response.accessToken;
    //     }).catchError((error, stackTrace) {
    //       handler.reject(error, true);
    //     }).whenComplete(() => dio.interceptors.requestLock.unlock());
    //   }

    //   options.headers['Authorization'] = 'Bearer $accessToken';
    // }

    return handler.next(options);
  }

  ///On Response > hide Hud overlay
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    //hide loading indicator
    final provider = providerContainer.read(isLoadingProvider.notifier);
    provider.hide();
    // providerContainer.read(isLoadingProvider.notifier).hide();
    return handler.next(response);
  }

  /// ? How to Show error message to user in case of error ?
  /// in the try/catch clause, show alert with error message
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    //hide loading indicator
    final provider = providerContainer.read(isLoadingProvider.notifier);
    provider.hide();

    //override the default error handling
    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions);
          case 401:
            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        throw NoInternetConnectionException(err.requestOptions);
    }

    return handler.next(err);
  }
}

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'DioErrors.Invalid'.tr();
  }
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'DioErrors.Unknown'.tr();
  }
}

class ConflictException extends DioError {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'DioErrors.Conflict'.tr();
  }
}

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'DioErros.AccessDenied'.tr();
  }
}

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'DioErrors.NotFound'.tr();
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);
  @override
  String toString() {
    return 'DioErrors.NoInternet'.tr();
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'DioErrors.Timeout'.tr();
  }
}
