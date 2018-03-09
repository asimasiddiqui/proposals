<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://tempuri.org/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" targetNamespace="http://tempuri.org/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://tempuri.org/">
      <s:element name="GetCurrencies">
        <s:complexType />
      </s:element>
      <s:element name="GetCurrenciesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCurrenciesResult" type="tns:ArrayOfString" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfString">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="string" nillable="true" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetCurrencyRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Currency" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="RateDate" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="GetCurrencyRateResult" type="s:decimal" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyRates">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="RateDate" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyRatesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCurrencyRatesResult">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetConversionRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CurrencyFrom" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CurrencyTo" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="RateDate" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetConversionRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="GetConversionRateResult" type="s:decimal" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetConversionAmount">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CurrencyFrom" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CurrencyTo" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="RateDate" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="Amount" type="s:decimal" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetConversionAmountResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="GetConversionAmountResult" type="s:decimal" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCultureInfo">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Currency" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCultureInfoResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCultureInfoResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ConvertDataTableColumn">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ds">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
            <s:element minOccurs="1" maxOccurs="1" name="TableIndex" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="ColumnName" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="FromCurrency" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ToCurrency" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ConvertDataTableColumnResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ds">
              <s:complexType>
                <s:sequence>
                  <s:element ref="s:schema" />
                  <s:any />
                </s:sequence>
              </s:complexType>
            </s:element>
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetLastUpdateDate">
        <s:complexType />
      </s:element>
      <s:element name="GetLastUpdateDateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="GetLastUpdateDateResult" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ArrayOfString" nillable="true" type="tns:ArrayOfString" />
      <s:element name="decimal" type="s:decimal" />
      <s:element name="DataSet" nillable="true">
        <s:complexType>
          <s:sequence>
            <s:element ref="s:schema" />
            <s:any />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="string" nillable="true" type="s:string" />
      <s:element name="dateTime" type="s:dateTime" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="GetCurrenciesSoapIn">
    <wsdl:part name="parameters" element="tns:GetCurrencies" />
  </wsdl:message>
  <wsdl:message name="GetCurrenciesSoapOut">
    <wsdl:part name="parameters" element="tns:GetCurrenciesResponse" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyRateSoapIn">
    <wsdl:part name="parameters" element="tns:GetCurrencyRate" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyRateSoapOut">
    <wsdl:part name="parameters" element="tns:GetCurrencyRateResponse" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyRatesSoapIn">
    <wsdl:part name="parameters" element="tns:GetCurrencyRates" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyRatesSoapOut">
    <wsdl:part name="parameters" element="tns:GetCurrencyRatesResponse" />
  </wsdl:message>
  <wsdl:message name="GetConversionRateSoapIn">
    <wsdl:part name="parameters" element="tns:GetConversionRate" />
  </wsdl:message>
  <wsdl:message name="GetConversionRateSoapOut">
    <wsdl:part name="parameters" element="tns:GetConversionRateResponse" />
  </wsdl:message>
  <wsdl:message name="GetConversionAmountSoapIn">
    <wsdl:part name="parameters" element="tns:GetConversionAmount" />
  </wsdl:message>
  <wsdl:message name="GetConversionAmountSoapOut">
    <wsdl:part name="parameters" element="tns:GetConversionAmountResponse" />
  </wsdl:message>
  <wsdl:message name="GetCultureInfoSoapIn">
    <wsdl:part name="parameters" element="tns:GetCultureInfo" />
  </wsdl:message>
  <wsdl:message name="GetCultureInfoSoapOut">
    <wsdl:part name="parameters" element="tns:GetCultureInfoResponse" />
  </wsdl:message>
  <wsdl:message name="ConvertDataTableColumnSoapIn">
    <wsdl:part name="parameters" element="tns:ConvertDataTableColumn" />
  </wsdl:message>
  <wsdl:message name="ConvertDataTableColumnSoapOut">
    <wsdl:part name="parameters" element="tns:ConvertDataTableColumnResponse" />
  </wsdl:message>
  <wsdl:message name="GetLastUpdateDateSoapIn">
    <wsdl:part name="parameters" element="tns:GetLastUpdateDate" />
  </wsdl:message>
  <wsdl:message name="GetLastUpdateDateSoapOut">
    <wsdl:part name="parameters" element="tns:GetLastUpdateDateResponse" />
  </wsdl:message>
  <wsdl:message name="GetCurrenciesHttpGetIn" />
  <wsdl:message name="GetCurrenciesHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyRateHttpGetIn">
    <wsdl:part name="Currency" type="s:string" />
    <wsdl:part name="RateDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyRateHttpGetOut">
    <wsdl:part name="Body" element="tns:decimal" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyRatesHttpGetIn">
    <wsdl:part name="RateDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyRatesHttpGetOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="GetConversionRateHttpGetIn">
    <wsdl:part name="CurrencyFrom" type="s:string" />
    <wsdl:part name="CurrencyTo" type="s:string" />
    <wsdl:part name="RateDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetConversionRateHttpGetOut">
    <wsdl:part name="Body" element="tns:decimal" />
  </wsdl:message>
  <wsdl:message name="GetConversionAmountHttpGetIn">
    <wsdl:part name="CurrencyFrom" type="s:string" />
    <wsdl:part name="CurrencyTo" type="s:string" />
    <wsdl:part name="RateDate" type="s:string" />
    <wsdl:part name="Amount" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetConversionAmountHttpGetOut">
    <wsdl:part name="Body" element="tns:decimal" />
  </wsdl:message>
  <wsdl:message name="GetCultureInfoHttpGetIn">
    <wsdl:part name="Currency" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCultureInfoHttpGetOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="GetLastUpdateDateHttpGetIn" />
  <wsdl:message name="GetLastUpdateDateHttpGetOut">
    <wsdl:part name="Body" element="tns:dateTime" />
  </wsdl:message>
  <wsdl:message name="GetCurrenciesHttpPostIn" />
  <wsdl:message name="GetCurrenciesHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfString" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyRateHttpPostIn">
    <wsdl:part name="Currency" type="s:string" />
    <wsdl:part name="RateDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyRateHttpPostOut">
    <wsdl:part name="Body" element="tns:decimal" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyRatesHttpPostIn">
    <wsdl:part name="RateDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyRatesHttpPostOut">
    <wsdl:part name="Body" element="tns:DataSet" />
  </wsdl:message>
  <wsdl:message name="GetConversionRateHttpPostIn">
    <wsdl:part name="CurrencyFrom" type="s:string" />
    <wsdl:part name="CurrencyTo" type="s:string" />
    <wsdl:part name="RateDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetConversionRateHttpPostOut">
    <wsdl:part name="Body" element="tns:decimal" />
  </wsdl:message>
  <wsdl:message name="GetConversionAmountHttpPostIn">
    <wsdl:part name="CurrencyFrom" type="s:string" />
    <wsdl:part name="CurrencyTo" type="s:string" />
    <wsdl:part name="RateDate" type="s:string" />
    <wsdl:part name="Amount" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetConversionAmountHttpPostOut">
    <wsdl:part name="Body" element="tns:decimal" />
  </wsdl:message>
  <wsdl:message name="GetCultureInfoHttpPostIn">
    <wsdl:part name="Currency" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCultureInfoHttpPostOut">
    <wsdl:part name="Body" element="tns:string" />
  </wsdl:message>
  <wsdl:message name="GetLastUpdateDateHttpPostIn" />
  <wsdl:message name="GetLastUpdateDateHttpPostOut">
    <wsdl:part name="Body" element="tns:dateTime" />
  </wsdl:message>
  <wsdl:portType name="ConverterSoap">
    <wsdl:operation name="GetCurrencies">
      <wsdl:input message="tns:GetCurrenciesSoapIn" />
      <wsdl:output message="tns:GetCurrenciesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRate">
      <wsdl:input message="tns:GetCurrencyRateSoapIn" />
      <wsdl:output message="tns:GetCurrencyRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRates">
      <wsdl:input message="tns:GetCurrencyRatesSoapIn" />
      <wsdl:output message="tns:GetCurrencyRatesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetConversionRate">
      <wsdl:input message="tns:GetConversionRateSoapIn" />
      <wsdl:output message="tns:GetConversionRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetConversionAmount">
      <wsdl:input message="tns:GetConversionAmountSoapIn" />
      <wsdl:output message="tns:GetConversionAmountSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCultureInfo">
      <wsdl:input message="tns:GetCultureInfoSoapIn" />
      <wsdl:output message="tns:GetCultureInfoSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ConvertDataTableColumn">
      <wsdl:input message="tns:ConvertDataTableColumnSoapIn" />
      <wsdl:output message="tns:ConvertDataTableColumnSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetLastUpdateDate">
      <wsdl:input message="tns:GetLastUpdateDateSoapIn" />
      <wsdl:output message="tns:GetLastUpdateDateSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="ConverterHttpGet">
    <wsdl:operation name="GetCurrencies">
      <wsdl:input message="tns:GetCurrenciesHttpGetIn" />
      <wsdl:output message="tns:GetCurrenciesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRate">
      <wsdl:input message="tns:GetCurrencyRateHttpGetIn" />
      <wsdl:output message="tns:GetCurrencyRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRates">
      <wsdl:input message="tns:GetCurrencyRatesHttpGetIn" />
      <wsdl:output message="tns:GetCurrencyRatesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetConversionRate">
      <wsdl:input message="tns:GetConversionRateHttpGetIn" />
      <wsdl:output message="tns:GetConversionRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetConversionAmount">
      <wsdl:input message="tns:GetConversionAmountHttpGetIn" />
      <wsdl:output message="tns:GetConversionAmountHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCultureInfo">
      <wsdl:input message="tns:GetCultureInfoHttpGetIn" />
      <wsdl:output message="tns:GetCultureInfoHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetLastUpdateDate">
      <wsdl:input message="tns:GetLastUpdateDateHttpGetIn" />
      <wsdl:output message="tns:GetLastUpdateDateHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="ConverterHttpPost">
    <wsdl:operation name="GetCurrencies">
      <wsdl:input message="tns:GetCurrenciesHttpPostIn" />
      <wsdl:output message="tns:GetCurrenciesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRate">
      <wsdl:input message="tns:GetCurrencyRateHttpPostIn" />
      <wsdl:output message="tns:GetCurrencyRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRates">
      <wsdl:input message="tns:GetCurrencyRatesHttpPostIn" />
      <wsdl:output message="tns:GetCurrencyRatesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetConversionRate">
      <wsdl:input message="tns:GetConversionRateHttpPostIn" />
      <wsdl:output message="tns:GetConversionRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetConversionAmount">
      <wsdl:input message="tns:GetConversionAmountHttpPostIn" />
      <wsdl:output message="tns:GetConversionAmountHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCultureInfo">
      <wsdl:input message="tns:GetCultureInfoHttpPostIn" />
      <wsdl:output message="tns:GetCultureInfoHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetLastUpdateDate">
      <wsdl:input message="tns:GetLastUpdateDateHttpPostIn" />
      <wsdl:output message="tns:GetLastUpdateDateHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="ConverterSoap" type="tns:ConverterSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="GetCurrencies">
      <soap:operation soapAction="http://tempuri.org/GetCurrencies" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRate">
      <soap:operation soapAction="http://tempuri.org/GetCurrencyRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRates">
      <soap:operation soapAction="http://tempuri.org/GetCurrencyRates" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetConversionRate">
      <soap:operation soapAction="http://tempuri.org/GetConversionRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetConversionAmount">
      <soap:operation soapAction="http://tempuri.org/GetConversionAmount" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCultureInfo">
      <soap:operation soapAction="http://tempuri.org/GetCultureInfo" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertDataTableColumn">
      <soap:operation soapAction="http://tempuri.org/ConvertDataTableColumn" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetLastUpdateDate">
      <soap:operation soapAction="http://tempuri.org/GetLastUpdateDate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ConverterSoap12" type="tns:ConverterSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="GetCurrencies">
      <soap12:operation soapAction="http://tempuri.org/GetCurrencies" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRate">
      <soap12:operation soapAction="http://tempuri.org/GetCurrencyRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRates">
      <soap12:operation soapAction="http://tempuri.org/GetCurrencyRates" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetConversionRate">
      <soap12:operation soapAction="http://tempuri.org/GetConversionRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetConversionAmount">
      <soap12:operation soapAction="http://tempuri.org/GetConversionAmount" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCultureInfo">
      <soap12:operation soapAction="http://tempuri.org/GetCultureInfo" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertDataTableColumn">
      <soap12:operation soapAction="http://tempuri.org/ConvertDataTableColumn" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetLastUpdateDate">
      <soap12:operation soapAction="http://tempuri.org/GetLastUpdateDate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ConverterHttpGet" type="tns:ConverterHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="GetCurrencies">
      <http:operation location="/GetCurrencies" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRate">
      <http:operation location="/GetCurrencyRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRates">
      <http:operation location="/GetCurrencyRates" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetConversionRate">
      <http:operation location="/GetConversionRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetConversionAmount">
      <http:operation location="/GetConversionAmount" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCultureInfo">
      <http:operation location="/GetCultureInfo" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetLastUpdateDate">
      <http:operation location="/GetLastUpdateDate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="ConverterHttpPost" type="tns:ConverterHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="GetCurrencies">
      <http:operation location="/GetCurrencies" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRate">
      <http:operation location="/GetCurrencyRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyRates">
      <http:operation location="/GetCurrencyRates" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetConversionRate">
      <http:operation location="/GetConversionRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetConversionAmount">
      <http:operation location="/GetConversionAmount" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCultureInfo">
      <http:operation location="/GetCultureInfo" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetLastUpdateDate">
      <http:operation location="/GetLastUpdateDate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="Converter">
    <wsdl:port name="ConverterSoap" binding="tns:ConverterSoap">
      <soap:address location="http://currencyconverter.kowabunga.net/converter.asmx" />
    </wsdl:port>
    <wsdl:port name="ConverterSoap12" binding="tns:ConverterSoap12">
      <soap12:address location="http://currencyconverter.kowabunga.net/converter.asmx" />
    </wsdl:port>
    <wsdl:port name="ConverterHttpGet" binding="tns:ConverterHttpGet">
      <http:address location="http://currencyconverter.kowabunga.net/converter.asmx" />
    </wsdl:port>
    <wsdl:port name="ConverterHttpPost" binding="tns:ConverterHttpPost">
      <http:address location="http://currencyconverter.kowabunga.net/converter.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>