# QvaPay

QvaPay PHP Api Client


## Installation & Usage

### Requirements

PHP 7.2 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

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




$apiInstance = new QvaPay\Api\DefaultApi(
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
    echo 'Exception when calling DefaultApi->auth: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://qvapay.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DefaultApi* | [**auth**](docs/Api/DefaultApi.md#auth) | **GET** /info | Autenticación vía API
*DefaultApi* | [**balance**](docs/Api/DefaultApi.md#balance) | **GET** /balance | Consultar saldo QvaPay
*DefaultApi* | [**invoice**](docs/Api/DefaultApi.md#invoice) | **GET** /create_invoice | Crear factura de pago
*DefaultApi* | [**transactions**](docs/Api/DefaultApi.md#transactions) | **GET** /transactions | Obtener Transacciones

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