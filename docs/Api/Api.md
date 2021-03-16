# QvaPay

All URIs are relative to https://qvapay.com/api/v1.

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth()**](Api.md#auth) | **GET** /info | Autenticación vía API
[**balance()**](Api.md#balance) | **GET** /balance | Consultar saldo QvaPay
[**invoice()**](Api.md#invoice) | **GET** /create_invoice | Crear factura de pago
[**transactions()**](Api.md#transactions) | **GET** /transactions | Obtener Transacciones


## `auth()`

```php
auth($app_id, $app_secret): string[]
```

Autenticación vía API

Todos los endpoints de QvaPay requieren obligatoriamente el acceso con un app_id y app_secret vía parámetros GET, POST o cabeceras.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new QvaPay\Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$app_id = 'app_id_example'; // string | App ID
$app_secret = 'app_secret_example'; // string | App Secret

try {
    $result = $apiInstance->auth($app_id, $app_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling Api->auth: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **string**| App ID |
 **app_secret** | **string**| App Secret |

### Return type

**string[]**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `balance()`

```php
balance($app_id, $app_secret): string[]
```

Consultar saldo QvaPay

El balance de cuenta QvaPay te permitirá conocer el saldo actual para realizar operaciones de compras o transacciones.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new QvaPay\Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$app_id = 'app_id_example'; // string | App ID
$app_secret = 'app_secret_example'; // string | App Secret

try {
    $result = $apiInstance->balance($app_id, $app_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling Api->balance: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **string**| App ID |
 **app_secret** | **string**| App Secret |

### Return type

**string[]**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `invoice()`

```php
invoice($app_id, $app_secret, $amount, $description, $signed, $remote_id): string[]
```

Crear factura de pago

Puede utilizar este endpoint para generar una dirección de pago QvaPay y solicitar a sus clientes que le paguen por un producto o servicio asociado a una aplicación de la plataforma.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new QvaPay\Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$app_id = 'app_id_example'; // string | App ID
$app_secret = 'app_secret_example'; // string | App Secret
$amount = 3.4; // float | Cantidad de dinero a recibir (en dólares y con 2 decimales)
$description = 'description_example'; // string | Descripción de la factura a generar, útil para brindar información al pagador. (No más de 300 caracteres)
$signed = True; // bool | Generación de una URL firmada o no (URL firmadas vencen a los 30 minutos, aportando más seguridad o caducidad)
$remote_id = 'remote_id_example'; // string | ID de factura en el sistema remoto (no requerido)

try {
    $result = $apiInstance->invoice($app_id, $app_secret, $amount, $description, $signed, $remote_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling Api->invoice: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **string**| App ID |
 **app_secret** | **string**| App Secret |
 **amount** | **float**| Cantidad de dinero a recibir (en dólares y con 2 decimales) |
 **description** | **string**| Descripción de la factura a generar, útil para brindar información al pagador. (No más de 300 caracteres) |
 **signed** | **bool**| Generación de una URL firmada o no (URL firmadas vencen a los 30 minutos, aportando más seguridad o caducidad) |
 **remote_id** | **string**| ID de factura en el sistema remoto (no requerido) | [optional]

### Return type

**string[]**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `transactions()`

```php
transactions($app_id, $app_secret): string[]
```

Obtener Transacciones

Puede solicitar el listado completo de operaciones y/o transacciones realizadas por su aplicación de QvaPay. Puede incluso paginar los resultados entregados. (Registro de 50 ítems por solicitud)

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new QvaPay\Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$app_id = 'app_id_example'; // string | App ID
$app_secret = 'app_secret_example'; // string | App Secret

try {
    $result = $apiInstance->transactions($app_id, $app_secret);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling Api->transactions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | **string**| App ID |
 **app_secret** | **string**| App Secret |

### Return type

**string[]**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
