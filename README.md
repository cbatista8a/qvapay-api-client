# QvaPay

QvaPay PHP Api Client


## Installation & Usage

### Requirements

PHP 7.2 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/).

Run `composer require cbatista8a/qvapay-api-client`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/QvaPay/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## API Endpoints

All URIs are relative to *https://qvapay.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Api* | [**auth**](docs/Api/Api.md#auth) | **GET** /info | Autenticación vía API
*Api* | [**balance**](docs/Api/Api.md#balance) | **GET** /balance | Consultar saldo QvaPay
*Api* | [**invoice**](docs/Api/Api.md#invoice) | **GET** /create_invoice | Crear factura de pago
*Api* | [**transactions**](docs/Api/Api.md#transactions) | **GET** /transactions | Obtener Transacciones

## Models


## Authorization
All endpoints do not require authorization.
## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author



## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.0.0`
    - Package version: `1.0.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
