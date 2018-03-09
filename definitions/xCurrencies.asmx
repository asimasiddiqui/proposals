<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://www.xignite.com/services/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" targetNamespace="http://www.xignite.com/services/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Provide real-time currency foreign exchange information and calculations.</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://www.xignite.com/services/">
      <s:element name="ListCurrencies">
        <s:complexType />
      </s:element>
      <s:element name="ListCurrenciesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ListCurrenciesResult" type="tns:CurrencyList" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CurrencyList">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Currencies" type="tns:ArrayOfCurrencyItem" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="Common">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Outcome" type="tns:OutcomeTypes" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Identity" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="Delay" type="s:double" />
        </s:sequence>
      </s:complexType>
      <s:simpleType name="OutcomeTypes">
        <s:restriction base="s:string">
          <s:enumeration value="Success" />
          <s:enumeration value="SystemError" />
          <s:enumeration value="RequestError" />
          <s:enumeration value="RegistrationError" />
        </s:restriction>
      </s:simpleType>
      <s:complexType name="ArrayOfCurrencyItem">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="CurrencyItem" nillable="true" type="tns:CurrencyItem" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="CurrencyItem">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Name" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Plural" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="Supported" type="s:boolean" />
          <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
          <s:element minOccurs="0" maxOccurs="1" name="ActiveMessage" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Countries" type="tns:ArrayOfCountry" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfCountry">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="Country" nillable="true" type="tns:Country" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="Country">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Code" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Name" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="Header" type="tns:Header" />
      <s:complexType name="Header">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Username" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Tracer" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="IHeader_Username" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="IHeader_Password" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="IHeader_Tracer" type="s:string" />
        </s:sequence>
        <s:anyAttribute />
      </s:complexType>
      <s:element name="ListActiveCurrencies">
        <s:complexType />
      </s:element>
      <s:element name="ListActiveCurrenciesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ListActiveCurrenciesResult" type="tns:CurrencyList" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ListOfficialRates">
        <s:complexType />
      </s:element>
      <s:element name="ListOfficialRatesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ListOfficialRatesResult" type="tns:OfficialRates" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="OfficialRates">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="CountryList" type="tns:ArrayOfOfficialCountry" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="ArrayOfOfficialCountry">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="OfficialCountry" nillable="true" type="tns:OfficialCountry" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="OfficialCountry">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Country" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="OfficialCurrencies" type="tns:ArrayOfOfficialCurrency" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfOfficialCurrency">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="OfficialCurrency" nillable="true" type="tns:OfficialCurrency" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="OfficialCurrency">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="Active" type="s:boolean" />
          <s:element minOccurs="0" maxOccurs="1" name="Message" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetUnitOfAccount">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Currency" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetUnitOfAccountResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetUnitOfAccountResult" type="tns:UnitOfAccount" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="UnitOfAccount">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Currency" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Rate" type="s:double" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:element name="ConvertRealTimeValue">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="From" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="To" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="Amount" type="s:double" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ConvertRealTimeValueResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ConvertRealTimeValueResult" type="tns:ExchangeConversion" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ExchangeConversion">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="From" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="To" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="Time" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Amount" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="ExchangeRate" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Result" type="s:double" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="Currency">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Symbol" type="tns:Currencies" />
          <s:element minOccurs="0" maxOccurs="1" name="Name" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:simpleType name="Currencies">
        <s:restriction base="s:string">
          <s:enumeration value="USD" />
          <s:enumeration value="AED" />
          <s:enumeration value="AFA" />
          <s:enumeration value="AFN" />
          <s:enumeration value="ALL" />
          <s:enumeration value="AMD" />
          <s:enumeration value="ANG" />
          <s:enumeration value="AOA" />
          <s:enumeration value="ARA" />
          <s:enumeration value="ARE" />
          <s:enumeration value="ARS" />
          <s:enumeration value="ATS" />
          <s:enumeration value="AUD" />
          <s:enumeration value="AUN" />
          <s:enumeration value="AWG" />
          <s:enumeration value="AZM" />
          <s:enumeration value="AZN" />
          <s:enumeration value="BAM" />
          <s:enumeration value="BBD" />
          <s:enumeration value="BDT" />
          <s:enumeration value="BEF" />
          <s:enumeration value="BEL" />
          <s:enumeration value="BGL" />
          <s:enumeration value="BGN" />
          <s:enumeration value="BHD" />
          <s:enumeration value="BIF" />
          <s:enumeration value="BMD" />
          <s:enumeration value="BND" />
          <s:enumeration value="BOB" />
          <s:enumeration value="BOV" />
          <s:enumeration value="BRC" />
          <s:enumeration value="BRE" />
          <s:enumeration value="BRI" />
          <s:enumeration value="BRL" />
          <s:enumeration value="BRR" />
          <s:enumeration value="BSD" />
          <s:enumeration value="BTN" />
          <s:enumeration value="BWP" />
          <s:enumeration value="BYN" />
          <s:enumeration value="BYR" />
          <s:enumeration value="BZD" />
          <s:enumeration value="CAD" />
          <s:enumeration value="CDF" />
          <s:enumeration value="CHF" />
          <s:enumeration value="CLF" />
          <s:enumeration value="CHK" />
          <s:enumeration value="CLP" />
          <s:enumeration value="CNY" />
          <s:enumeration value="CNH" />
          <s:enumeration value="COP" />
          <s:enumeration value="CRC" />
          <s:enumeration value="CSD" />
          <s:enumeration value="CUP" />
          <s:enumeration value="CVE" />
          <s:enumeration value="CYP" />
          <s:enumeration value="CZK" />
          <s:enumeration value="DEM" />
          <s:enumeration value="DJF" />
          <s:enumeration value="DKK" />
          <s:enumeration value="DOP" />
          <s:enumeration value="DOE" />
          <s:enumeration value="DOW" />
          <s:enumeration value="DZD" />
          <s:enumeration value="ECS" />
          <s:enumeration value="EEK" />
          <s:enumeration value="EGP" />
          <s:enumeration value="ERN" />
          <s:enumeration value="ESP" />
          <s:enumeration value="ETB" />
          <s:enumeration value="EUR" />
          <s:enumeration value="FIM" />
          <s:enumeration value="FJD" />
          <s:enumeration value="FKP" />
          <s:enumeration value="FRF" />
          <s:enumeration value="FRN" />
          <s:enumeration value="GBP" />
          <s:enumeration value="GEL" />
          <s:enumeration value="GGP" />
          <s:enumeration value="GHC" />
          <s:enumeration value="GHS" />
          <s:enumeration value="GIP" />
          <s:enumeration value="GMD" />
          <s:enumeration value="GNF" />
          <s:enumeration value="GRD" />
          <s:enumeration value="GTQ" />
          <s:enumeration value="GYD" />
          <s:enumeration value="HKD" />
          <s:enumeration value="HNL" />
          <s:enumeration value="HRD" />
          <s:enumeration value="HRK" />
          <s:enumeration value="HTG" />
          <s:enumeration value="HUF" />
          <s:enumeration value="IDR" />
          <s:enumeration value="IEP" />
          <s:enumeration value="ILS" />
          <s:enumeration value="IMP" />
          <s:enumeration value="INR" />
          <s:enumeration value="IQD" />
          <s:enumeration value="IRR" />
          <s:enumeration value="ISK" />
          <s:enumeration value="ITL" />
          <s:enumeration value="JEP" />
          <s:enumeration value="JMD" />
          <s:enumeration value="JOD" />
          <s:enumeration value="JPY" />
          <s:enumeration value="KES" />
          <s:enumeration value="KGS" />
          <s:enumeration value="KHR" />
          <s:enumeration value="KMF" />
          <s:enumeration value="KPW" />
          <s:enumeration value="KRU" />
          <s:enumeration value="KRW" />
          <s:enumeration value="KWD" />
          <s:enumeration value="KYD" />
          <s:enumeration value="KZT" />
          <s:enumeration value="LAK" />
          <s:enumeration value="LBP" />
          <s:enumeration value="LKR" />
          <s:enumeration value="LRD" />
          <s:enumeration value="LSL" />
          <s:enumeration value="LTL" />
          <s:enumeration value="LUF" />
          <s:enumeration value="LVL" />
          <s:enumeration value="LYD" />
          <s:enumeration value="M5P" />
          <s:enumeration value="MAD" />
          <s:enumeration value="MAL" />
          <s:enumeration value="MDL" />
          <s:enumeration value="MFG" />
          <s:enumeration value="MGA" />
          <s:enumeration value="MKD" />
          <s:enumeration value="MMK" />
          <s:enumeration value="MNT" />
          <s:enumeration value="MOP" />
          <s:enumeration value="MRO" />
          <s:enumeration value="MTL" />
          <s:enumeration value="MTP" />
          <s:enumeration value="MUR" />
          <s:enumeration value="MVR" />
          <s:enumeration value="MWK" />
          <s:enumeration value="MXN" />
          <s:enumeration value="MXP" />
          <s:enumeration value="MXV" />
          <s:enumeration value="MYR" />
          <s:enumeration value="MZM" />
          <s:enumeration value="MZN" />
          <s:enumeration value="NAD" />
          <s:enumeration value="NBL" />
          <s:enumeration value="NGN" />
          <s:enumeration value="NIC" />
          <s:enumeration value="NIO" />
          <s:enumeration value="NLG" />
          <s:enumeration value="NOK" />
          <s:enumeration value="NPR" />
          <s:enumeration value="NSO" />
          <s:enumeration value="NZD" />
          <s:enumeration value="OMR" />
          <s:enumeration value="OSO" />
          <s:enumeration value="PAB" />
          <s:enumeration value="PEI" />
          <s:enumeration value="PEN" />
          <s:enumeration value="PES" />
          <s:enumeration value="PGK" />
          <s:enumeration value="PHP" />
          <s:enumeration value="PKR" />
          <s:enumeration value="PLN" />
          <s:enumeration value="PLZ" />
          <s:enumeration value="PTE" />
          <s:enumeration value="PYG" />
          <s:enumeration value="QAR" />
          <s:enumeration value="ROL" />
          <s:enumeration value="RON" />
          <s:enumeration value="RSD" />
          <s:enumeration value="RUB" />
          <s:enumeration value="RUR" />
          <s:enumeration value="RWF" />
          <s:enumeration value="SAR" />
          <s:enumeration value="SBD" />
          <s:enumeration value="SCR" />
          <s:enumeration value="SDD" />
          <s:enumeration value="SDG" />
          <s:enumeration value="SDP" />
          <s:enumeration value="SDR" />
          <s:enumeration value="SEK" />
          <s:enumeration value="SGD" />
          <s:enumeration value="SHP" />
          <s:enumeration value="SIT" />
          <s:enumeration value="SKK" />
          <s:enumeration value="SLL" />
          <s:enumeration value="SOS" />
          <s:enumeration value="SPL" />
          <s:enumeration value="SRD" />
          <s:enumeration value="SRG" />
          <s:enumeration value="STD" />
          <s:enumeration value="SUR" />
          <s:enumeration value="SVC" />
          <s:enumeration value="SYP" />
          <s:enumeration value="SZL" />
          <s:enumeration value="THB" />
          <s:enumeration value="TJR" />
          <s:enumeration value="TJS" />
          <s:enumeration value="TMM" />
          <s:enumeration value="TMT" />
          <s:enumeration value="TND" />
          <s:enumeration value="TOP" />
          <s:enumeration value="TRL" />
          <s:enumeration value="TRY" />
          <s:enumeration value="TTD" />
          <s:enumeration value="TVD" />
          <s:enumeration value="TWD" />
          <s:enumeration value="TZS" />
          <s:enumeration value="UAH" />
          <s:enumeration value="UGX" />
          <s:enumeration value="UNK" />
          <s:enumeration value="UYP" />
          <s:enumeration value="UYU" />
          <s:enumeration value="UZS" />
          <s:enumeration value="VEB" />
          <s:enumeration value="VEF" />
          <s:enumeration value="VND" />
          <s:enumeration value="VRL" />
          <s:enumeration value="VRN" />
          <s:enumeration value="VUV" />
          <s:enumeration value="WST" />
          <s:enumeration value="XAF" />
          <s:enumeration value="XAG" />
          <s:enumeration value="XAU" />
          <s:enumeration value="XCD" />
          <s:enumeration value="XDR" />
          <s:enumeration value="XEU" />
          <s:enumeration value="XOF" />
          <s:enumeration value="XPD" />
          <s:enumeration value="XPF" />
          <s:enumeration value="XPT" />
          <s:enumeration value="YER" />
          <s:enumeration value="YUD" />
          <s:enumeration value="YUM" />
          <s:enumeration value="ZAL" />
          <s:enumeration value="ZAR" />
          <s:enumeration value="ZMK" />
          <s:enumeration value="ZMW" />
          <s:enumeration value="ZRN" />
          <s:enumeration value="ZRZ" />
          <s:enumeration value="ZWD" />
          <s:enumeration value="ZWL" />
          <s:enumeration value="BAD" />
          <s:enumeration value="NOCURRENCY" />
        </s:restriction>
      </s:simpleType>
      <s:element name="ConvertHistoricalValue">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="From" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="To" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="Amount" type="s:double" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ConvertHistoricalValueResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ConvertHistoricalValueResult" type="tns:ExchangeConversion" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeForwardRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="From" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="To" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeForwardRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetRealTimeForwardRateResult" type="tns:ForwardRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ForwardRate">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="From" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="To" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="Time" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Bid" type="s:double" />
              <s:element minOccurs="0" maxOccurs="1" name="BidTime" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Ask" type="s:double" />
              <s:element minOccurs="0" maxOccurs="1" name="AskTime" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Factor" type="s:int" />
              <s:element minOccurs="0" maxOccurs="1" name="Forwards" type="tns:ArrayOfForward" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="ArrayOfForward">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="Forward" nillable="true" type="tns:Forward" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="Forward">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="Type" type="tns:ForwardTypes" />
          <s:element minOccurs="1" maxOccurs="1" name="Bid" type="s:double" />
          <s:element minOccurs="1" maxOccurs="1" name="Ask" type="s:double" />
        </s:sequence>
      </s:complexType>
      <s:simpleType name="ForwardTypes">
        <s:restriction base="s:string">
          <s:enumeration value="Overnight" />
          <s:enumeration value="TomorrowNext" />
          <s:enumeration value="SpotNext" />
          <s:enumeration value="OneWeek" />
          <s:enumeration value="TwoWeek" />
          <s:enumeration value="ThreeWeek" />
          <s:enumeration value="OneMonth" />
          <s:enumeration value="TwoMonth" />
          <s:enumeration value="ThreeMonth" />
          <s:enumeration value="FourMonth" />
          <s:enumeration value="FiveMonth" />
          <s:enumeration value="SixMonth" />
          <s:enumeration value="SevenMonth" />
          <s:enumeration value="EightMonth" />
          <s:enumeration value="NineMonth" />
          <s:enumeration value="TenMonth" />
          <s:enumeration value="ElevenMonth" />
          <s:enumeration value="OneYear" />
          <s:enumeration value="TwoYear" />
          <s:enumeration value="ThreeYear" />
          <s:enumeration value="FourYear" />
          <s:enumeration value="FiveYear" />
          <s:enumeration value="SixYear" />
          <s:enumeration value="SevenYear" />
          <s:enumeration value="TenYear" />
        </s:restriction>
      </s:simpleType>
      <s:element name="GetRealTimeCrossRateAsString">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="From" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="To" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeCrossRateAsStringResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetRealTimeCrossRateAsStringResult" type="tns:CrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CrossRate">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Type" type="tns:QuoteTypes" />
              <s:element minOccurs="0" maxOccurs="1" name="From" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="To" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="Time" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Rate" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Bid" type="s:double" />
              <s:element minOccurs="0" maxOccurs="1" name="BidTime" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Ask" type="s:double" />
              <s:element minOccurs="0" maxOccurs="1" name="AskTime" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="Text" type="s:string" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:simpleType name="QuoteTypes">
        <s:restriction base="s:string">
          <s:enumeration value="RealTime" />
          <s:enumeration value="Delayed15Minutes" />
          <s:enumeration value="Delayed20Minutes" />
          <s:enumeration value="NotAvailable" />
        </s:restriction>
      </s:simpleType>
      <s:element name="GetLatestCrossRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="From" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="To" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetLatestCrossRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetLatestCrossRateResult" type="tns:CrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetLatestCrossRates">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="From" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Tos" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetLatestCrossRatesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetLatestCrossRatesResult" type="tns:ArrayOfCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfCrossRate">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="CrossRate" nillable="true" type="tns:CrossRate" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetRealTimeCrossRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="From" type="tns:Currencies" />
            <s:element minOccurs="1" maxOccurs="1" name="To" type="tns:Currencies" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeCrossRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetRealTimeCrossRateResult" type="tns:CrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeCrossRateGMT">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="From" type="tns:Currencies" />
            <s:element minOccurs="1" maxOccurs="1" name="To" type="tns:Currencies" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeCrossRateGMTResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetRealTimeCrossRateGMTResult" type="tns:CrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRawCrossRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="From" type="tns:Currencies" />
            <s:element minOccurs="1" maxOccurs="1" name="To" type="tns:Currencies" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRawCrossRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetRawCrossRateResult" type="tns:CrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRawCrossRates">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRawCrossRatesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetRawCrossRatesResult" type="tns:ArrayOfCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeCrossRates">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeCrossRatesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetRealTimeCrossRatesResult" type="tns:ArrayOfCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRateTables">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRateTablesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRateTablesResult" type="tns:ArrayOfCrossRateTable" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfCrossRateTable">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="CrossRateTable" nillable="true" type="tns:CrossRateTable" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="CrossRateTable">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Lines" type="tns:ArrayOfCrossRateTableLine" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="ArrayOfCrossRateTableLine">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="CrossRateTableLine" nillable="true" type="tns:CrossRateTableLine" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="CrossRateTableLine">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="From" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="ExchangeRates" type="tns:ArrayOfExchangeRate" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="ArrayOfExchangeRate">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="ExchangeRate" nillable="true" type="tns:ExchangeRate" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ExchangeRate">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="To" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="Time" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Rate" type="s:double" />
              <s:element minOccurs="0" maxOccurs="1" name="Text" type="s:string" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:element name="GetHistoricalCrossRateTablesBidAsk">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRateTablesBidAskResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRateTablesBidAskResult" type="tns:ArrayOfCrossRateTableWithBidAsk" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfCrossRateTableWithBidAsk">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="CrossRateTableWithBidAsk" nillable="true" type="tns:CrossRateTableWithBidAsk" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="CrossRateTableWithBidAsk">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Lines" type="tns:ArrayOfCrossRateTableLineWithBidAsk" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="ArrayOfCrossRateTableLineWithBidAsk">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="CrossRateTableLineWithBidAsk" nillable="true" type="tns:CrossRateTableLineWithBidAsk" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="CrossRateTableLineWithBidAsk">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="From" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="ExchangeRates" type="tns:ArrayOfCrossRate" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:element name="GetCurrencyReport">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="From" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="To" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyReportResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCurrencyReportResult" type="tns:Report" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="Report">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="To" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="Lines" type="tns:ArrayOfLine" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="ArrayOfLine">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="Line" nillable="true" type="tns:Line" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="Line">
        <s:sequence>
          <s:element minOccurs="1" maxOccurs="1" name="LineType" type="tns:LineTypes" />
          <s:element minOccurs="0" maxOccurs="1" name="From" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value1" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value2" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value3" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value4" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value5" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value6" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value7" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value8" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value9" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value10" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value11" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value12" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value13" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value14" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value15" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value16" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value17" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value18" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value19" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value20" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value21" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value22" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value23" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value24" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value25" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value26" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value27" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value28" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value29" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value30" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="Value31" type="s:string" />
        </s:sequence>
      </s:complexType>
      <s:simpleType name="LineTypes">
        <s:restriction base="s:string">
          <s:enumeration value="Header" />
          <s:enumeration value="Line" />
        </s:restriction>
      </s:simpleType>
      <s:element name="GetHistoricalCrossRateTable">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRateTableResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRateTableResult" type="tns:CrossRateTable" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRateTableBidAsk">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRateTableBidAskResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRateTableBidAskResult" type="tns:CrossRateTableWithBidAsk" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeCrossRateTable">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeCrossRateTableResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetRealTimeCrossRateTableResult" type="tns:CrossRateTable" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeCrossRateTableWithBidAsk">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeCrossRateTableWithBidAskResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetRealTimeCrossRateTableWithBidAskResult" type="tns:CrossRateTableWithBidAsk" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetAllCrossRatesForACurrency">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetAllCrossRatesForACurrencyResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetAllCrossRatesForACurrencyResult" type="tns:CrossRateTableLineWithBidAsk" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeCrossRateTableAsHTML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ColumnHeaderStyle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineHeaderStyle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CellStyle" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetRealTimeCrossRateTableAsHTMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetRealTimeCrossRateTableAsHTMLResult" type="tns:HTMLCrossRateTable" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="HTMLCrossRateTable">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="HTML" type="s:string" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:element name="GetSimpleRealTimeCrossRateTableAsHTML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ColumnHeaderStyle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineHeaderStyle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CellStyle" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetSimpleRealTimeCrossRateTableAsHTMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetSimpleRealTimeCrossRateTableAsHTMLResult" type="tns:HTMLCrossRateTable" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRateTableAsHTML">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="ColumnHeaderStyle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="LineHeaderStyle" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="CellStyle" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRateTableAsHTMLResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRateTableAsHTMLResult" type="tns:HTMLCrossRateTable" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRateResult" type="tns:HistoricalCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="HistoricalCrossRate">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Type" type="tns:QuoteTypes" />
              <s:element minOccurs="0" maxOccurs="1" name="From" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="To" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="First" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Last" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="High" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Low" type="s:double" />
              <s:element minOccurs="0" maxOccurs="1" name="Text" type="s:string" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:element name="GetHistoricalCrossRates">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRatesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRatesResult" type="tns:ArrayOfHistoricalCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfHistoricalCrossRate">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="HistoricalCrossRate" nillable="true" type="tns:HistoricalCrossRate" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetHistoricalCrossRateBidAsk">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRateBidAskResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRateBidAskResult" type="tns:FullHistoricalCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="FullHistoricalCrossRate">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Type" type="tns:QuoteTypes" />
              <s:element minOccurs="0" maxOccurs="1" name="From" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="To" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="First" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Last" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="High" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Low" type="s:double" />
              <s:element minOccurs="0" maxOccurs="1" name="Text" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Bid" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Ask" type="s:double" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:element name="GetHistoricalCrossRatesBidAsk">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRatesBidAskResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRatesBidAskResult" type="tns:ArrayOfFullHistoricalCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfFullHistoricalCrossRate">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="FullHistoricalCrossRate" nillable="true" type="tns:FullHistoricalCrossRate" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetHistoricalCrossRatesRange">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRatesRangeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRatesRangeResult" type="tns:HistoricalCrossRates" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="HistoricalCrossRates">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="From" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="To" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="CrossRates" type="tns:ArrayOfCrossRateItem" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="ArrayOfCrossRateItem">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="CrossRateItem" nillable="true" type="tns:CrossRateItem" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="CrossRateItem">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="First" type="s:double" />
          <s:element minOccurs="1" maxOccurs="1" name="Last" type="s:double" />
          <s:element minOccurs="1" maxOccurs="1" name="High" type="s:double" />
          <s:element minOccurs="1" maxOccurs="1" name="Low" type="s:double" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetHistoricalCrossRatesBidAskRange">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRatesBidAskRangeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRatesBidAskRangeResult" type="tns:FullHistoricalCrossRates" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="FullHistoricalCrossRates">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="From" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="To" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="CrossRates" type="tns:ArrayOfFullCrossRateItem" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="ArrayOfFullCrossRateItem">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="FullCrossRateItem" nillable="true" type="tns:FullCrossRateItem" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="FullCrossRateItem">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="First" type="s:double" />
          <s:element minOccurs="1" maxOccurs="1" name="Last" type="s:double" />
          <s:element minOccurs="1" maxOccurs="1" name="High" type="s:double" />
          <s:element minOccurs="1" maxOccurs="1" name="Low" type="s:double" />
          <s:element minOccurs="1" maxOccurs="1" name="Bid" type="s:double" />
          <s:element minOccurs="1" maxOccurs="1" name="Ask" type="s:double" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetHistoricalCrossRatesAsOf">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="EndDate" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="PeriodType" type="tns:PeriodTypes" />
            <s:element minOccurs="1" maxOccurs="1" name="Periods" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:simpleType name="PeriodTypes">
        <s:restriction base="s:string">
          <s:enumeration value="Day" />
          <s:enumeration value="Week" />
          <s:enumeration value="Month" />
          <s:enumeration value="Quarter" />
          <s:enumeration value="Year" />
        </s:restriction>
      </s:simpleType>
      <s:element name="GetHistoricalCrossRatesAsOfResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRatesAsOfResult" type="tns:HistoricalCrossRates" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRatesBidAskAsOf">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="EndDate" type="s:dateTime" />
            <s:element minOccurs="1" maxOccurs="1" name="PeriodType" type="tns:PeriodTypes" />
            <s:element minOccurs="1" maxOccurs="1" name="Periods" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalCrossRatesBidAskAsOfResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalCrossRatesBidAskAsOfResult" type="tns:FullHistoricalCrossRates" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetOfficialCrossRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="CountryType" type="tns:CountryTypes" />
            <s:element minOccurs="1" maxOccurs="1" name="Symbol" type="tns:Currencies" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:simpleType name="CountryTypes">
        <s:restriction base="s:string">
          <s:enumeration value="Mexico" />
          <s:enumeration value="UnitedStatesAM" />
          <s:enumeration value="UnitedStatesPM" />
          <s:enumeration value="Canada" />
          <s:enumeration value="Europe" />
          <s:enumeration value="Russia" />
          <s:enumeration value="Poland" />
          <s:enumeration value="Romania" />
          <s:enumeration value="Hungary" />
          <s:enumeration value="Chile" />
          <s:enumeration value="Czech" />
          <s:enumeration value="Australia" />
          <s:enumeration value="Brazil" />
          <s:enumeration value="Bulgaria" />
          <s:enumeration value="China" />
          <s:enumeration value="Uruguay" />
          <s:enumeration value="UnitedStates" />
          <s:enumeration value="Colombia" />
          <s:enumeration value="Argentina" />
          <s:enumeration value="MexicoDoF" />
          <s:enumeration value="Serbia" />
          <s:enumeration value="Macedonia" />
          <s:enumeration value="Turkey" />
          <s:enumeration value="India" />
          <s:enumeration value="Philippines" />
          <s:enumeration value="EuropeItalyEUR" />
          <s:enumeration value="Thailand" />
          <s:enumeration value="EuropeItalyUSD" />
        </s:restriction>
      </s:simpleType>
      <s:element name="GetOfficialCrossRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetOfficialCrossRateResult" type="tns:HistoricalCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetOfficialCrossRates">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="CountryType" type="tns:CountryTypes" />
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetOfficialCrossRatesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetOfficialCrossRatesResult" type="tns:ArrayOfHistoricalCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetOfficialCrossRateBidAsk">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="CountryType" type="tns:CountryTypes" />
            <s:element minOccurs="1" maxOccurs="1" name="Symbol" type="tns:Currencies" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetOfficialCrossRateBidAskResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetOfficialCrossRateBidAskResult" type="tns:FullHistoricalCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetOfficialCrossRatesBidAsk">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="CountryType" type="tns:CountryTypes" />
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetOfficialCrossRatesBidAskResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetOfficialCrossRatesBidAskResult" type="tns:ArrayOfFullHistoricalCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetMutipleHistoricalCrossRates">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetMutipleHistoricalCrossRatesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetMutipleHistoricalCrossRatesResult" type="tns:MultipleHistoricalCrossRates" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="MultipleHistoricalCrossRates">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="HistoricalCrossRates" type="tns:ArrayOfFullHistoricalCrossRate" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:element name="GetAverageHistoricalCrossRates">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetAverageHistoricalCrossRatesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetAverageHistoricalCrossRatesResult" type="tns:ArrayOfAverageHistoricalCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ArrayOfAverageHistoricalCrossRate">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="AverageHistoricalCrossRate" nillable="true" type="tns:AverageHistoricalCrossRate" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="AverageHistoricalCrossRate">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Type" type="tns:QuoteTypes" />
              <s:element minOccurs="0" maxOccurs="1" name="From" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="To" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="First" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Last" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="High" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Low" type="s:double" />
              <s:element minOccurs="0" maxOccurs="1" name="Text" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Bid" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Ask" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Average" type="s:double" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:element name="GetAverageHistoricalCrossRate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetAverageHistoricalCrossRateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetAverageHistoricalCrossRateResult" type="tns:AverageHistoricalCrossRate" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalMonthlyCrossRatesRange">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalMonthlyCrossRatesRangeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalMonthlyCrossRatesRangeResult" type="tns:FullHistoricalCrossRates" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCrossRateChange">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCrossRateChangeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCrossRateChangeResult" type="tns:CrossRateChange" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CrossRateChange">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Type" type="tns:QuoteTypes" />
              <s:element minOccurs="0" maxOccurs="1" name="From" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="To" type="tns:Currency" />
              <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="Time" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Rate" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Bid" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Ask" type="s:double" />
              <s:element minOccurs="0" maxOccurs="1" name="Changes" type="tns:ArrayOfChange" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="ArrayOfChange">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="Change" nillable="true" type="tns:Change" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="Change">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="1" maxOccurs="1" name="Type" type="tns:ChangeTypes" />
              <s:element minOccurs="1" maxOccurs="1" name="Rate" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Change" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="PercentChange" type="s:double" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:simpleType name="ChangeTypes">
        <s:restriction base="s:string">
          <s:enumeration value="OneMonth" />
          <s:enumeration value="ThreeMonth" />
          <s:enumeration value="SixMonth" />
        </s:restriction>
      </s:simpleType>
      <s:element name="GetCurrencyChartCustom">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="PeriodType" type="tns:HistoricalPeriodTypes" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="Style" type="tns:StockChartStyles" />
            <s:element minOccurs="1" maxOccurs="1" name="Width" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Height" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="Design" type="tns:ChartDesign" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:simpleType name="HistoricalPeriodTypes">
        <s:restriction base="s:string">
          <s:enumeration value="Daily" />
        </s:restriction>
      </s:simpleType>
      <s:simpleType name="StockChartStyles">
        <s:restriction base="s:string">
          <s:enumeration value="Line" />
          <s:enumeration value="Candle" />
          <s:enumeration value="Stick" />
          <s:enumeration value="Area" />
          <s:enumeration value="Percentage" />
          <s:enumeration value="LinePercentage" />
          <s:enumeration value="CandlePercentage" />
          <s:enumeration value="StickPercentage" />
          <s:enumeration value="AreaPercentage" />
        </s:restriction>
      </s:simpleType>
      <s:complexType name="ChartDesign">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="1" maxOccurs="1" name="Secure" type="s:boolean" />
              <s:element minOccurs="0" maxOccurs="1" name="TextTitle" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="TextHeader" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="TextFooter" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="TextPriceLine" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="TextVolumeBar" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="TextHighest" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="TextLowest" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="TextOpen" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="TextClose" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="TextUp" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="TextDown" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorBackground" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorBackWall" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorVolumeBackWall" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="ShowVolumeBackWall" type="s:boolean" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorHighlight" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorPriceLine" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorVolumeBar" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorVolumeBarFill" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorHigh" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorStickUp" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorStickLow" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorConstant" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorLow" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorPoint" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorTitle" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorFooter" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorHeader" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorAxis" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorGrid" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorFonts" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorStripe" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorOpen" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorClose" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorVerticalGrid" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorHorizontalGrid" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorUp" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorDown" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorHighLowLine" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorCollection" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="GridHorizontalStyle" type="tns:LinePattern" />
              <s:element minOccurs="1" maxOccurs="1" name="GridVerticalStyle" type="tns:LinePattern" />
              <s:element minOccurs="1" maxOccurs="1" name="GridHorizontalWidth" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="GridVerticalWidth" type="s:int" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorFrame" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="FrameBorder" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="FormatPriceLine" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="FormatVolume" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="FormatDate" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="GradeBackground" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="GradeBackwall" type="s:boolean" />
              <s:element minOccurs="0" maxOccurs="1" name="WaterMark" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="WaterMarkTopMargin" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="WaterMarkLeftMargin" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="WaterMarkTransparency" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="PointSize" type="s:float" />
              <s:element minOccurs="1" maxOccurs="1" name="StackVariationLabels" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="ShowAxisLabelInLegend" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="LineWidth" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="SplitPercent" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="ShowHigh" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="ShowLow" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="ShowOpen" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="ShowClose" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="ShowVolume" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="ShowUpVariation" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="ShowDownVariation" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="ShowLegend" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="VariationYear" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="VolumeDivider" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="VolumeTextOffset" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="PriceTextOffset" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="FrameType" type="tns:ImageFrameType" />
              <s:element minOccurs="1" maxOccurs="1" name="Projection" type="tns:PredefinedProjection" />
              <s:element minOccurs="1" maxOccurs="1" name="MarginTop" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="MarginBottom" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="MarginLeft" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="MarginRight" type="s:int" />
              <s:element minOccurs="0" maxOccurs="1" name="FontFamily" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="FontSizeHeader" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="FontSizeFooter" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="Height" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Width" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="ZoomPercent" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="LegendBox" type="s:boolean" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorLegendBackground" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="ColorLegendBorder" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="LegendVerticalPosition" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="LegendHorizontalPosition" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="Reload" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="ShowPriceChartLabels" type="s:boolean" />
              <s:element minOccurs="1" maxOccurs="1" name="TickPrecision" type="tns:TickPeriod" />
              <s:element minOccurs="1" maxOccurs="1" name="TickPeriods" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="WaterMarkHorizontalAlign" type="tns:HorzAlign" />
              <s:element minOccurs="1" maxOccurs="1" name="LightScheme" type="tns:PredefinedLightModel" />
              <s:element minOccurs="1" maxOccurs="1" name="FontSizeLegend" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="FontSizeAxes" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="FontSizeTitle" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="DaysForHourDisplay" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="DaysForDayDisplay" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="DaysForWeekDisplay" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="DaysForBiWeeklyDisplay" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="DaysForMonthDisplay" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="DaysForQuarterDisplay" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="DaysForSemiAnnualDisplay" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="DaysForAnnualDisplay" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="DaysForBiAnnualDisplay" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="DaysForPentaAnnualDisplay" type="s:int" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:simpleType name="LinePattern">
        <s:restriction base="s:string">
          <s:enumeration value="Solid" />
          <s:enumeration value="Dot" />
          <s:enumeration value="Dash" />
          <s:enumeration value="DashDot" />
          <s:enumeration value="DashDotDot" />
        </s:restriction>
      </s:simpleType>
      <s:simpleType name="ImageFrameType">
        <s:restriction base="s:string">
          <s:enumeration value="None" />
          <s:enumeration value="Colonial" />
          <s:enumeration value="Common" />
          <s:enumeration value="Embed" />
          <s:enumeration value="Emboss" />
          <s:enumeration value="FrameOpenRight" />
          <s:enumeration value="FrameOpenRL" />
          <s:enumeration value="OneBarGradient" />
          <s:enumeration value="RoundedUp" />
          <s:enumeration value="SlimRoundedShadowed" />
        </s:restriction>
      </s:simpleType>
      <s:simpleType name="PredefinedProjection">
        <s:restriction base="s:string">
          <s:enumeration value="Orthogonal" />
          <s:enumeration value="OrthogonalElevated" />
          <s:enumeration value="OrthogonalHorizontalLeft" />
          <s:enumeration value="OrthogonalHorizontalRight" />
          <s:enumeration value="OrthogonalHalf" />
          <s:enumeration value="OrthogonalHalfHorizontalLeft" />
          <s:enumeration value="OrthogonalHalfHorizontalRight" />
          <s:enumeration value="OrthogonalHalfRotated" />
          <s:enumeration value="OrthogonalHalfElevated" />
          <s:enumeration value="Perspective" />
          <s:enumeration value="PerspectiveHorizontalLeft" />
          <s:enumeration value="PerspectiveHorizontalRight" />
          <s:enumeration value="PerspectiveRotated" />
          <s:enumeration value="PerspectiveElevated" />
          <s:enumeration value="PerspectiveTilted" />
        </s:restriction>
      </s:simpleType>
      <s:simpleType name="TickPeriod">
        <s:restriction base="s:string">
          <s:enumeration value="Tick" />
          <s:enumeration value="Millisecond" />
          <s:enumeration value="Second" />
          <s:enumeration value="Minute" />
          <s:enumeration value="Hour" />
          <s:enumeration value="Day" />
          <s:enumeration value="Week" />
          <s:enumeration value="Month" />
        </s:restriction>
      </s:simpleType>
      <s:simpleType name="HorzAlign">
        <s:restriction base="s:string">
          <s:enumeration value="Center" />
          <s:enumeration value="Left" />
          <s:enumeration value="Right" />
        </s:restriction>
      </s:simpleType>
      <s:simpleType name="PredefinedLightModel">
        <s:restriction base="s:string">
          <s:enumeration value="None" />
          <s:enumeration value="SoftTopLeft" />
          <s:enumeration value="SoftFrontal" />
          <s:enumeration value="SoftTopRight" />
          <s:enumeration value="ShinyTopLeft" />
          <s:enumeration value="ShinyFrontal" />
          <s:enumeration value="ShinyTopRight" />
          <s:enumeration value="MetallicLustre" />
          <s:enumeration value="NorthernLights" />
        </s:restriction>
      </s:simpleType>
      <s:element name="GetCurrencyChartCustomResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCurrencyChartCustomResult" type="tns:HistoricalChart" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="HistoricalChart">
        <s:complexContent mixed="false">
          <s:extension base="tns:StockChart">
            <s:sequence>
              <s:element minOccurs="1" maxOccurs="1" name="PeriodType" type="tns:HistoricalPeriodTypes" />
              <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Width" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="Height" type="s:int" />
              <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Style" type="tns:StockChartStyles" />
              <s:element minOccurs="0" maxOccurs="1" name="Url" type="s:string" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="StockChart">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Design" type="tns:ChartDesign" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:element name="GetCurrencyChartCustomBinary">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="PeriodType" type="tns:HistoricalPeriodTypes" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="Style" type="tns:StockChartStyles" />
            <s:element minOccurs="1" maxOccurs="1" name="Width" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Height" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="Design" type="tns:ChartDesign" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyChartCustomBinaryResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCurrencyChartCustomBinaryResult" type="tns:ChartBinary" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="ChartBinary">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="ByteArray" type="s:base64Binary" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:element name="GetCurrencyChart">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="PeriodType" type="tns:HistoricalPeriodTypes" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="Style" type="tns:StockChartStyles" />
            <s:element minOccurs="1" maxOccurs="1" name="Width" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Height" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="Preset" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyChartResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCurrencyChartResult" type="tns:HistoricalChart" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyChartBinary">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="PeriodType" type="tns:HistoricalPeriodTypes" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="Style" type="tns:StockChartStyles" />
            <s:element minOccurs="1" maxOccurs="1" name="Width" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Height" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="Preset" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyChartBinaryResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCurrencyChartBinaryResult" type="tns:ChartBinary" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyIntradayChart">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="TimeZone" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="Style" type="tns:StockChartStyles" />
            <s:element minOccurs="1" maxOccurs="1" name="Width" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Height" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="PeriodType" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="TickPeriods" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="Preset" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyIntradayChartResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCurrencyIntradayChartResult" type="tns:CurrencyChartIntraday" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="CurrencyChartIntraday">
        <s:complexContent mixed="false">
          <s:extension base="tns:StockChart">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="PeriodType" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="StartTime" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="EndTime" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Width" type="s:int" />
              <s:element minOccurs="1" maxOccurs="1" name="Height" type="s:int" />
              <s:element minOccurs="0" maxOccurs="1" name="Title" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Style" type="tns:StockChartStyles" />
              <s:element minOccurs="0" maxOccurs="1" name="Url" type="s:string" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:element name="GetCurrencyIntradayChartCustomBinary">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="TimeZone" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="Style" type="tns:StockChartStyles" />
            <s:element minOccurs="1" maxOccurs="1" name="Width" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Height" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="PeriodType" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="TickPeriods" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="Design" type="tns:ChartDesign" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyIntradayChartCustomBinaryResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCurrencyIntradayChartCustomBinaryResult" type="tns:ChartBinary" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyIntradayChartCustom">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="TimeZone" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="Style" type="tns:StockChartStyles" />
            <s:element minOccurs="1" maxOccurs="1" name="Width" type="s:int" />
            <s:element minOccurs="1" maxOccurs="1" name="Height" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="PeriodType" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="TickPeriods" type="s:int" />
            <s:element minOccurs="0" maxOccurs="1" name="Design" type="tns:ChartDesign" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetCurrencyIntradayChartCustomResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetCurrencyIntradayChartCustomResult" type="tns:CurrencyChartIntraday" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetChartDesign">
        <s:complexType />
      </s:element>
      <s:element name="GetChartDesignResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetChartDesignResult" type="tns:ChartDesign" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetTick">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Time" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetTickResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetTickResult" type="tns:SingleTick" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="SingleTick">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="Time" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Bid" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Ask" type="s:double" />
              <s:element minOccurs="1" maxOccurs="1" name="Mid" type="s:double" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:element name="GetTicks">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndTime" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="TickPrecision" type="tns:TickPeriod" />
            <s:element minOccurs="1" maxOccurs="1" name="TickPeriods" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetTicksResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetTicksResult" type="tns:Ticks" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="Ticks">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
              <s:element minOccurs="0" maxOccurs="1" name="Ticks" type="tns:ArrayOfTick" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:complexType name="ArrayOfTick">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="Tick" nillable="true" type="tns:Tick" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="Tick">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="Time" type="s:string" />
          <s:element minOccurs="1" maxOccurs="1" name="Mid" type="s:double" />
          <s:element minOccurs="1" maxOccurs="1" name="High" type="s:double" />
          <s:element minOccurs="1" maxOccurs="1" name="Low" type="s:double" />
        </s:sequence>
      </s:complexType>
      <s:element name="GetHistoricalTicks">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="AsOfDate" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="TickPrecision" type="tns:TickPeriod" />
            <s:element minOccurs="1" maxOccurs="1" name="TickPeriods" type="s:int" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalTicksResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalTicksResult" type="tns:Ticks" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalHighLow">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDateTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDateTime" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetHistoricalHighLowResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetHistoricalHighLowResult" type="tns:HighLowTick" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="HighLowTick">
        <s:complexContent mixed="false">
          <s:extension base="tns:Common">
            <s:sequence>
              <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
              <s:element minOccurs="1" maxOccurs="1" name="Type" type="tns:HighLowTickTypes" />
              <s:element minOccurs="0" maxOccurs="1" name="High" type="tns:SingleTick" />
              <s:element minOccurs="0" maxOccurs="1" name="Low" type="tns:SingleTick" />
            </s:sequence>
          </s:extension>
        </s:complexContent>
      </s:complexType>
      <s:simpleType name="HighLowTickTypes">
        <s:restriction base="s:string">
          <s:enumeration value="High" />
          <s:enumeration value="Low" />
        </s:restriction>
      </s:simpleType>
      <s:element name="GetIntradayHighLow">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDateTime" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDateTime" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="GetIntradayHighLowResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="GetIntradayHighLowResult" type="tns:HighLowTick" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CurrencyList" nillable="true" type="tns:CurrencyList" />
      <s:element name="OfficialRates" nillable="true" type="tns:OfficialRates" />
      <s:element name="UnitOfAccount" nillable="true" type="tns:UnitOfAccount" />
      <s:element name="ExchangeConversion" nillable="true" type="tns:ExchangeConversion" />
      <s:element name="ForwardRate" nillable="true" type="tns:ForwardRate" />
      <s:element name="CrossRate" nillable="true" type="tns:CrossRate" />
      <s:element name="ArrayOfCrossRate" nillable="true" type="tns:ArrayOfCrossRate" />
      <s:element name="ArrayOfCrossRateTable" nillable="true" type="tns:ArrayOfCrossRateTable" />
      <s:element name="ArrayOfCrossRateTableWithBidAsk" nillable="true" type="tns:ArrayOfCrossRateTableWithBidAsk" />
      <s:element name="Report" nillable="true" type="tns:Report" />
      <s:element name="CrossRateTable" nillable="true" type="tns:CrossRateTable" />
      <s:element name="CrossRateTableWithBidAsk" nillable="true" type="tns:CrossRateTableWithBidAsk" />
      <s:element name="CrossRateTableLineWithBidAsk" nillable="true" type="tns:CrossRateTableLineWithBidAsk" />
      <s:element name="HTMLCrossRateTable" nillable="true" type="tns:HTMLCrossRateTable" />
      <s:element name="HistoricalCrossRate" nillable="true" type="tns:HistoricalCrossRate" />
      <s:element name="ArrayOfHistoricalCrossRate" nillable="true" type="tns:ArrayOfHistoricalCrossRate" />
      <s:element name="FullHistoricalCrossRate" nillable="true" type="tns:FullHistoricalCrossRate" />
      <s:element name="ArrayOfFullHistoricalCrossRate" nillable="true" type="tns:ArrayOfFullHistoricalCrossRate" />
      <s:element name="HistoricalCrossRates" nillable="true" type="tns:HistoricalCrossRates" />
      <s:element name="FullHistoricalCrossRates" nillable="true" type="tns:FullHistoricalCrossRates" />
      <s:element name="MultipleHistoricalCrossRates" nillable="true" type="tns:MultipleHistoricalCrossRates" />
      <s:element name="ArrayOfAverageHistoricalCrossRate" nillable="true" type="tns:ArrayOfAverageHistoricalCrossRate" />
      <s:element name="AverageHistoricalCrossRate" nillable="true" type="tns:AverageHistoricalCrossRate" />
      <s:element name="CrossRateChange" nillable="true" type="tns:CrossRateChange" />
      <s:element name="HistoricalChart" nillable="true" type="tns:HistoricalChart" />
      <s:element name="ChartBinary" nillable="true" type="tns:ChartBinary" />
      <s:element name="CurrencyChartIntraday" nillable="true" type="tns:CurrencyChartIntraday" />
      <s:element name="ChartDesign" nillable="true" type="tns:ChartDesign" />
      <s:element name="SingleTick" nillable="true" type="tns:SingleTick" />
      <s:element name="Ticks" nillable="true" type="tns:Ticks" />
      <s:element name="HighLowTick" nillable="true" type="tns:HighLowTick" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="ListCurrenciesSoapIn">
    <wsdl:part name="parameters" element="tns:ListCurrencies" />
  </wsdl:message>
  <wsdl:message name="ListCurrenciesSoapOut">
    <wsdl:part name="parameters" element="tns:ListCurrenciesResponse" />
  </wsdl:message>
  <wsdl:message name="ListCurrenciesHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="ListActiveCurrenciesSoapIn">
    <wsdl:part name="parameters" element="tns:ListActiveCurrencies" />
  </wsdl:message>
  <wsdl:message name="ListActiveCurrenciesSoapOut">
    <wsdl:part name="parameters" element="tns:ListActiveCurrenciesResponse" />
  </wsdl:message>
  <wsdl:message name="ListActiveCurrenciesHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="ListOfficialRatesSoapIn">
    <wsdl:part name="parameters" element="tns:ListOfficialRates" />
  </wsdl:message>
  <wsdl:message name="ListOfficialRatesSoapOut">
    <wsdl:part name="parameters" element="tns:ListOfficialRatesResponse" />
  </wsdl:message>
  <wsdl:message name="ListOfficialRatesHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetUnitOfAccountSoapIn">
    <wsdl:part name="parameters" element="tns:GetUnitOfAccount" />
  </wsdl:message>
  <wsdl:message name="GetUnitOfAccountSoapOut">
    <wsdl:part name="parameters" element="tns:GetUnitOfAccountResponse" />
  </wsdl:message>
  <wsdl:message name="GetUnitOfAccountHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="ConvertRealTimeValueSoapIn">
    <wsdl:part name="parameters" element="tns:ConvertRealTimeValue" />
  </wsdl:message>
  <wsdl:message name="ConvertRealTimeValueSoapOut">
    <wsdl:part name="parameters" element="tns:ConvertRealTimeValueResponse" />
  </wsdl:message>
  <wsdl:message name="ConvertRealTimeValueHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="ConvertHistoricalValueSoapIn">
    <wsdl:part name="parameters" element="tns:ConvertHistoricalValue" />
  </wsdl:message>
  <wsdl:message name="ConvertHistoricalValueSoapOut">
    <wsdl:part name="parameters" element="tns:ConvertHistoricalValueResponse" />
  </wsdl:message>
  <wsdl:message name="ConvertHistoricalValueHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeForwardRateSoapIn">
    <wsdl:part name="parameters" element="tns:GetRealTimeForwardRate" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeForwardRateSoapOut">
    <wsdl:part name="parameters" element="tns:GetRealTimeForwardRateResponse" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeForwardRateHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateAsStringSoapIn">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRateAsString" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateAsStringSoapOut">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRateAsStringResponse" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateAsStringHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRateSoapIn">
    <wsdl:part name="parameters" element="tns:GetLatestCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRateSoapOut">
    <wsdl:part name="parameters" element="tns:GetLatestCrossRateResponse" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRateHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRatesSoapIn">
    <wsdl:part name="parameters" element="tns:GetLatestCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRatesSoapOut">
    <wsdl:part name="parameters" element="tns:GetLatestCrossRatesResponse" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRatesHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateSoapIn">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateSoapOut">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRateResponse" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateGMTSoapIn">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRateGMT" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateGMTSoapOut">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRateGMTResponse" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateGMTHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRateSoapIn">
    <wsdl:part name="parameters" element="tns:GetRawCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRateSoapOut">
    <wsdl:part name="parameters" element="tns:GetRawCrossRateResponse" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRateHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRatesSoapIn">
    <wsdl:part name="parameters" element="tns:GetRawCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRatesSoapOut">
    <wsdl:part name="parameters" element="tns:GetRawCrossRatesResponse" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRatesHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRatesSoapIn">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRatesSoapOut">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRatesResponse" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRatesHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateTables" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateTablesResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesBidAskSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateTablesBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesBidAskSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateTablesBidAskResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesBidAskHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyReportSoapIn">
    <wsdl:part name="parameters" element="tns:GetCurrencyReport" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyReportSoapOut">
    <wsdl:part name="parameters" element="tns:GetCurrencyReportResponse" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyReportHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateTableResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableBidAskSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateTableBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableBidAskSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateTableBidAskResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableBidAskHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableSoapIn">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableSoapOut">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRateTableResponse" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableWithBidAskSoapIn">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRateTableWithBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableWithBidAskSoapOut">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRateTableWithBidAskResponse" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableWithBidAskHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetAllCrossRatesForACurrencySoapIn">
    <wsdl:part name="parameters" element="tns:GetAllCrossRatesForACurrency" />
  </wsdl:message>
  <wsdl:message name="GetAllCrossRatesForACurrencySoapOut">
    <wsdl:part name="parameters" element="tns:GetAllCrossRatesForACurrencyResponse" />
  </wsdl:message>
  <wsdl:message name="GetAllCrossRatesForACurrencyHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableAsHTMLSoapIn">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRateTableAsHTML" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableAsHTMLSoapOut">
    <wsdl:part name="parameters" element="tns:GetRealTimeCrossRateTableAsHTMLResponse" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableAsHTMLHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetSimpleRealTimeCrossRateTableAsHTMLSoapIn">
    <wsdl:part name="parameters" element="tns:GetSimpleRealTimeCrossRateTableAsHTML" />
  </wsdl:message>
  <wsdl:message name="GetSimpleRealTimeCrossRateTableAsHTMLSoapOut">
    <wsdl:part name="parameters" element="tns:GetSimpleRealTimeCrossRateTableAsHTMLResponse" />
  </wsdl:message>
  <wsdl:message name="GetSimpleRealTimeCrossRateTableAsHTMLHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableAsHTMLSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateTableAsHTML" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableAsHTMLSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateTableAsHTMLResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableAsHTMLHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRatesResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateBidAskSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateBidAskSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRateBidAskResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateBidAskHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRatesBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRatesBidAskResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesRangeSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRatesRange" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesRangeSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRatesRangeResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesRangeHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskRangeSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRatesBidAskRange" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskRangeSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRatesBidAskRangeResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskRangeHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesAsOfSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRatesAsOf" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesAsOfSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRatesAsOfResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesAsOfHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskAsOfSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRatesBidAskAsOf" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskAsOfSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalCrossRatesBidAskAsOfResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskAsOfHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateSoapIn">
    <wsdl:part name="parameters" element="tns:GetOfficialCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateSoapOut">
    <wsdl:part name="parameters" element="tns:GetOfficialCrossRateResponse" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesSoapIn">
    <wsdl:part name="parameters" element="tns:GetOfficialCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesSoapOut">
    <wsdl:part name="parameters" element="tns:GetOfficialCrossRatesResponse" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateBidAskSoapIn">
    <wsdl:part name="parameters" element="tns:GetOfficialCrossRateBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateBidAskSoapOut">
    <wsdl:part name="parameters" element="tns:GetOfficialCrossRateBidAskResponse" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateBidAskHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesBidAskSoapIn">
    <wsdl:part name="parameters" element="tns:GetOfficialCrossRatesBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesBidAskSoapOut">
    <wsdl:part name="parameters" element="tns:GetOfficialCrossRatesBidAskResponse" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesBidAskHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetMutipleHistoricalCrossRatesSoapIn">
    <wsdl:part name="parameters" element="tns:GetMutipleHistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetMutipleHistoricalCrossRatesSoapOut">
    <wsdl:part name="parameters" element="tns:GetMutipleHistoricalCrossRatesResponse" />
  </wsdl:message>
  <wsdl:message name="GetMutipleHistoricalCrossRatesHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRatesSoapIn">
    <wsdl:part name="parameters" element="tns:GetAverageHistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRatesSoapOut">
    <wsdl:part name="parameters" element="tns:GetAverageHistoricalCrossRatesResponse" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRatesHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRateSoapIn">
    <wsdl:part name="parameters" element="tns:GetAverageHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRateSoapOut">
    <wsdl:part name="parameters" element="tns:GetAverageHistoricalCrossRateResponse" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRateHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalMonthlyCrossRatesRangeSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalMonthlyCrossRatesRange" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalMonthlyCrossRatesRangeSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalMonthlyCrossRatesRangeResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalMonthlyCrossRatesRangeHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetCrossRateChangeSoapIn">
    <wsdl:part name="parameters" element="tns:GetCrossRateChange" />
  </wsdl:message>
  <wsdl:message name="GetCrossRateChangeSoapOut">
    <wsdl:part name="parameters" element="tns:GetCrossRateChangeResponse" />
  </wsdl:message>
  <wsdl:message name="GetCrossRateChangeHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartCustomSoapIn">
    <wsdl:part name="parameters" element="tns:GetCurrencyChartCustom" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartCustomSoapOut">
    <wsdl:part name="parameters" element="tns:GetCurrencyChartCustomResponse" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartCustomHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartCustomBinarySoapIn">
    <wsdl:part name="parameters" element="tns:GetCurrencyChartCustomBinary" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartCustomBinarySoapOut">
    <wsdl:part name="parameters" element="tns:GetCurrencyChartCustomBinaryResponse" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartCustomBinaryHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartSoapIn">
    <wsdl:part name="parameters" element="tns:GetCurrencyChart" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartSoapOut">
    <wsdl:part name="parameters" element="tns:GetCurrencyChartResponse" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartBinarySoapIn">
    <wsdl:part name="parameters" element="tns:GetCurrencyChartBinary" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartBinarySoapOut">
    <wsdl:part name="parameters" element="tns:GetCurrencyChartBinaryResponse" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartBinaryHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartSoapIn">
    <wsdl:part name="parameters" element="tns:GetCurrencyIntradayChart" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartSoapOut">
    <wsdl:part name="parameters" element="tns:GetCurrencyIntradayChartResponse" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartCustomBinarySoapIn">
    <wsdl:part name="parameters" element="tns:GetCurrencyIntradayChartCustomBinary" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartCustomBinarySoapOut">
    <wsdl:part name="parameters" element="tns:GetCurrencyIntradayChartCustomBinaryResponse" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartCustomBinaryHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartCustomSoapIn">
    <wsdl:part name="parameters" element="tns:GetCurrencyIntradayChartCustom" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartCustomSoapOut">
    <wsdl:part name="parameters" element="tns:GetCurrencyIntradayChartCustomResponse" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartCustomHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetChartDesignSoapIn">
    <wsdl:part name="parameters" element="tns:GetChartDesign" />
  </wsdl:message>
  <wsdl:message name="GetChartDesignSoapOut">
    <wsdl:part name="parameters" element="tns:GetChartDesignResponse" />
  </wsdl:message>
  <wsdl:message name="GetChartDesignHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetTickSoapIn">
    <wsdl:part name="parameters" element="tns:GetTick" />
  </wsdl:message>
  <wsdl:message name="GetTickSoapOut">
    <wsdl:part name="parameters" element="tns:GetTickResponse" />
  </wsdl:message>
  <wsdl:message name="GetTickHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetTicksSoapIn">
    <wsdl:part name="parameters" element="tns:GetTicks" />
  </wsdl:message>
  <wsdl:message name="GetTicksSoapOut">
    <wsdl:part name="parameters" element="tns:GetTicksResponse" />
  </wsdl:message>
  <wsdl:message name="GetTicksHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalTicksSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalTicks" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalTicksSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalTicksResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalTicksHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalHighLowSoapIn">
    <wsdl:part name="parameters" element="tns:GetHistoricalHighLow" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalHighLowSoapOut">
    <wsdl:part name="parameters" element="tns:GetHistoricalHighLowResponse" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalHighLowHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="GetIntradayHighLowSoapIn">
    <wsdl:part name="parameters" element="tns:GetIntradayHighLow" />
  </wsdl:message>
  <wsdl:message name="GetIntradayHighLowSoapOut">
    <wsdl:part name="parameters" element="tns:GetIntradayHighLowResponse" />
  </wsdl:message>
  <wsdl:message name="GetIntradayHighLowHeader">
    <wsdl:part name="Header" element="tns:Header" />
  </wsdl:message>
  <wsdl:message name="ListCurrenciesHttpGetIn" />
  <wsdl:message name="ListCurrenciesHttpGetOut">
    <wsdl:part name="Body" element="tns:CurrencyList" />
  </wsdl:message>
  <wsdl:message name="ListActiveCurrenciesHttpGetIn" />
  <wsdl:message name="ListActiveCurrenciesHttpGetOut">
    <wsdl:part name="Body" element="tns:CurrencyList" />
  </wsdl:message>
  <wsdl:message name="ListOfficialRatesHttpGetIn" />
  <wsdl:message name="ListOfficialRatesHttpGetOut">
    <wsdl:part name="Body" element="tns:OfficialRates" />
  </wsdl:message>
  <wsdl:message name="GetUnitOfAccountHttpGetIn">
    <wsdl:part name="Currency" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetUnitOfAccountHttpGetOut">
    <wsdl:part name="Body" element="tns:UnitOfAccount" />
  </wsdl:message>
  <wsdl:message name="ConvertRealTimeValueHttpGetIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
    <wsdl:part name="Amount" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ConvertRealTimeValueHttpGetOut">
    <wsdl:part name="Body" element="tns:ExchangeConversion" />
  </wsdl:message>
  <wsdl:message name="ConvertHistoricalValueHttpGetIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
    <wsdl:part name="Amount" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ConvertHistoricalValueHttpGetOut">
    <wsdl:part name="Body" element="tns:ExchangeConversion" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeForwardRateHttpGetIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeForwardRateHttpGetOut">
    <wsdl:part name="Body" element="tns:ForwardRate" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateAsStringHttpGetIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateAsStringHttpGetOut">
    <wsdl:part name="Body" element="tns:CrossRate" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRateHttpGetIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRateHttpGetOut">
    <wsdl:part name="Body" element="tns:CrossRate" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRatesHttpGetIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="Tos" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRatesHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateHttpGetIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateHttpGetOut">
    <wsdl:part name="Body" element="tns:CrossRate" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateGMTHttpGetIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateGMTHttpGetOut">
    <wsdl:part name="Body" element="tns:CrossRate" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRateHttpGetIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRateHttpGetOut">
    <wsdl:part name="Body" element="tns:CrossRate" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRatesHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRatesHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRatesHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRatesHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfCrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesBidAskHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesBidAskHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfCrossRateTableWithBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyReportHttpGetIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyReportHttpGetOut">
    <wsdl:part name="Body" element="tns:Report" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableHttpGetOut">
    <wsdl:part name="Body" element="tns:CrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableBidAskHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableBidAskHttpGetOut">
    <wsdl:part name="Body" element="tns:CrossRateTableWithBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableHttpGetOut">
    <wsdl:part name="Body" element="tns:CrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableWithBidAskHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableWithBidAskHttpGetOut">
    <wsdl:part name="Body" element="tns:CrossRateTableWithBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetAllCrossRatesForACurrencyHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetAllCrossRatesForACurrencyHttpGetOut">
    <wsdl:part name="Body" element="tns:CrossRateTableLineWithBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableAsHTMLHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="ColumnHeaderStyle" type="s:string" />
    <wsdl:part name="LineHeaderStyle" type="s:string" />
    <wsdl:part name="CellStyle" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableAsHTMLHttpGetOut">
    <wsdl:part name="Body" element="tns:HTMLCrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetSimpleRealTimeCrossRateTableAsHTMLHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="ColumnHeaderStyle" type="s:string" />
    <wsdl:part name="LineHeaderStyle" type="s:string" />
    <wsdl:part name="CellStyle" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetSimpleRealTimeCrossRateTableAsHTMLHttpGetOut">
    <wsdl:part name="Body" element="tns:HTMLCrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableAsHTMLHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
    <wsdl:part name="ColumnHeaderStyle" type="s:string" />
    <wsdl:part name="LineHeaderStyle" type="s:string" />
    <wsdl:part name="CellStyle" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableAsHTMLHttpGetOut">
    <wsdl:part name="Body" element="tns:HTMLCrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateHttpGetOut">
    <wsdl:part name="Body" element="tns:HistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateBidAskHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateBidAskHttpGetOut">
    <wsdl:part name="Body" element="tns:FullHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfFullHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesRangeHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesRangeHttpGetOut">
    <wsdl:part name="Body" element="tns:HistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskRangeHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskRangeHttpGetOut">
    <wsdl:part name="Body" element="tns:FullHistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesAsOfHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
    <wsdl:part name="PeriodType" type="s:string" />
    <wsdl:part name="Periods" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesAsOfHttpGetOut">
    <wsdl:part name="Body" element="tns:HistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskAsOfHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
    <wsdl:part name="PeriodType" type="s:string" />
    <wsdl:part name="Periods" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskAsOfHttpGetOut">
    <wsdl:part name="Body" element="tns:FullHistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateHttpGetIn">
    <wsdl:part name="CountryType" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateHttpGetOut">
    <wsdl:part name="Body" element="tns:HistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesHttpGetIn">
    <wsdl:part name="CountryType" type="s:string" />
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateBidAskHttpGetIn">
    <wsdl:part name="CountryType" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateBidAskHttpGetOut">
    <wsdl:part name="Body" element="tns:FullHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesBidAskHttpGetIn">
    <wsdl:part name="CountryType" type="s:string" />
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesBidAskHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfFullHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetMutipleHistoricalCrossRatesHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetMutipleHistoricalCrossRatesHttpGetOut">
    <wsdl:part name="Body" element="tns:MultipleHistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRatesHttpGetIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRatesHttpGetOut">
    <wsdl:part name="Body" element="tns:ArrayOfAverageHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRateHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRateHttpGetOut">
    <wsdl:part name="Body" element="tns:AverageHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalMonthlyCrossRatesRangeHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalMonthlyCrossRatesRangeHttpGetOut">
    <wsdl:part name="Body" element="tns:FullHistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetCrossRateChangeHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCrossRateChangeHttpGetOut">
    <wsdl:part name="Body" element="tns:CrossRateChange" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="PeriodType" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
    <wsdl:part name="Style" type="s:string" />
    <wsdl:part name="Width" type="s:string" />
    <wsdl:part name="Height" type="s:string" />
    <wsdl:part name="Preset" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartHttpGetOut">
    <wsdl:part name="Body" element="tns:HistoricalChart" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartBinaryHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="PeriodType" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
    <wsdl:part name="Style" type="s:string" />
    <wsdl:part name="Width" type="s:string" />
    <wsdl:part name="Height" type="s:string" />
    <wsdl:part name="Preset" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartBinaryHttpGetOut">
    <wsdl:part name="Body" element="tns:ChartBinary" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartTime" type="s:string" />
    <wsdl:part name="EndTime" type="s:string" />
    <wsdl:part name="TimeZone" type="s:string" />
    <wsdl:part name="Style" type="s:string" />
    <wsdl:part name="Width" type="s:string" />
    <wsdl:part name="Height" type="s:string" />
    <wsdl:part name="PeriodType" type="s:string" />
    <wsdl:part name="TickPeriods" type="s:string" />
    <wsdl:part name="Preset" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartHttpGetOut">
    <wsdl:part name="Body" element="tns:CurrencyChartIntraday" />
  </wsdl:message>
  <wsdl:message name="GetChartDesignHttpGetIn" />
  <wsdl:message name="GetChartDesignHttpGetOut">
    <wsdl:part name="Body" element="tns:ChartDesign" />
  </wsdl:message>
  <wsdl:message name="GetTickHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="Time" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetTickHttpGetOut">
    <wsdl:part name="Body" element="tns:SingleTick" />
  </wsdl:message>
  <wsdl:message name="GetTicksHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartTime" type="s:string" />
    <wsdl:part name="EndTime" type="s:string" />
    <wsdl:part name="TickPrecision" type="s:string" />
    <wsdl:part name="TickPeriods" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetTicksHttpGetOut">
    <wsdl:part name="Body" element="tns:Ticks" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalTicksHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartTime" type="s:string" />
    <wsdl:part name="EndTime" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
    <wsdl:part name="TickPrecision" type="s:string" />
    <wsdl:part name="TickPeriods" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalTicksHttpGetOut">
    <wsdl:part name="Body" element="tns:Ticks" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalHighLowHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDateTime" type="s:string" />
    <wsdl:part name="EndDateTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalHighLowHttpGetOut">
    <wsdl:part name="Body" element="tns:HighLowTick" />
  </wsdl:message>
  <wsdl:message name="GetIntradayHighLowHttpGetIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDateTime" type="s:string" />
    <wsdl:part name="EndDateTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetIntradayHighLowHttpGetOut">
    <wsdl:part name="Body" element="tns:HighLowTick" />
  </wsdl:message>
  <wsdl:message name="ListCurrenciesHttpPostIn" />
  <wsdl:message name="ListCurrenciesHttpPostOut">
    <wsdl:part name="Body" element="tns:CurrencyList" />
  </wsdl:message>
  <wsdl:message name="ListActiveCurrenciesHttpPostIn" />
  <wsdl:message name="ListActiveCurrenciesHttpPostOut">
    <wsdl:part name="Body" element="tns:CurrencyList" />
  </wsdl:message>
  <wsdl:message name="ListOfficialRatesHttpPostIn" />
  <wsdl:message name="ListOfficialRatesHttpPostOut">
    <wsdl:part name="Body" element="tns:OfficialRates" />
  </wsdl:message>
  <wsdl:message name="GetUnitOfAccountHttpPostIn">
    <wsdl:part name="Currency" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetUnitOfAccountHttpPostOut">
    <wsdl:part name="Body" element="tns:UnitOfAccount" />
  </wsdl:message>
  <wsdl:message name="ConvertRealTimeValueHttpPostIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
    <wsdl:part name="Amount" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ConvertRealTimeValueHttpPostOut">
    <wsdl:part name="Body" element="tns:ExchangeConversion" />
  </wsdl:message>
  <wsdl:message name="ConvertHistoricalValueHttpPostIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
    <wsdl:part name="Amount" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ConvertHistoricalValueHttpPostOut">
    <wsdl:part name="Body" element="tns:ExchangeConversion" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeForwardRateHttpPostIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeForwardRateHttpPostOut">
    <wsdl:part name="Body" element="tns:ForwardRate" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateAsStringHttpPostIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateAsStringHttpPostOut">
    <wsdl:part name="Body" element="tns:CrossRate" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRateHttpPostIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRateHttpPostOut">
    <wsdl:part name="Body" element="tns:CrossRate" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRatesHttpPostIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="Tos" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetLatestCrossRatesHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateHttpPostIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateHttpPostOut">
    <wsdl:part name="Body" element="tns:CrossRate" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateGMTHttpPostIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateGMTHttpPostOut">
    <wsdl:part name="Body" element="tns:CrossRate" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRateHttpPostIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRateHttpPostOut">
    <wsdl:part name="Body" element="tns:CrossRate" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRatesHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRawCrossRatesHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRatesHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRatesHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfCrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesBidAskHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTablesBidAskHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfCrossRateTableWithBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyReportHttpPostIn">
    <wsdl:part name="From" type="s:string" />
    <wsdl:part name="To" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyReportHttpPostOut">
    <wsdl:part name="Body" element="tns:Report" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableHttpPostOut">
    <wsdl:part name="Body" element="tns:CrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableBidAskHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableBidAskHttpPostOut">
    <wsdl:part name="Body" element="tns:CrossRateTableWithBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableHttpPostOut">
    <wsdl:part name="Body" element="tns:CrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableWithBidAskHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableWithBidAskHttpPostOut">
    <wsdl:part name="Body" element="tns:CrossRateTableWithBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetAllCrossRatesForACurrencyHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetAllCrossRatesForACurrencyHttpPostOut">
    <wsdl:part name="Body" element="tns:CrossRateTableLineWithBidAsk" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableAsHTMLHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="ColumnHeaderStyle" type="s:string" />
    <wsdl:part name="LineHeaderStyle" type="s:string" />
    <wsdl:part name="CellStyle" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetRealTimeCrossRateTableAsHTMLHttpPostOut">
    <wsdl:part name="Body" element="tns:HTMLCrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetSimpleRealTimeCrossRateTableAsHTMLHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="ColumnHeaderStyle" type="s:string" />
    <wsdl:part name="LineHeaderStyle" type="s:string" />
    <wsdl:part name="CellStyle" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetSimpleRealTimeCrossRateTableAsHTMLHttpPostOut">
    <wsdl:part name="Body" element="tns:HTMLCrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableAsHTMLHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
    <wsdl:part name="ColumnHeaderStyle" type="s:string" />
    <wsdl:part name="LineHeaderStyle" type="s:string" />
    <wsdl:part name="CellStyle" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateTableAsHTMLHttpPostOut">
    <wsdl:part name="Body" element="tns:HTMLCrossRateTable" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateHttpPostOut">
    <wsdl:part name="Body" element="tns:HistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateBidAskHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRateBidAskHttpPostOut">
    <wsdl:part name="Body" element="tns:FullHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfFullHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesRangeHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesRangeHttpPostOut">
    <wsdl:part name="Body" element="tns:HistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskRangeHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskRangeHttpPostOut">
    <wsdl:part name="Body" element="tns:FullHistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesAsOfHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
    <wsdl:part name="PeriodType" type="s:string" />
    <wsdl:part name="Periods" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesAsOfHttpPostOut">
    <wsdl:part name="Body" element="tns:HistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskAsOfHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
    <wsdl:part name="PeriodType" type="s:string" />
    <wsdl:part name="Periods" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalCrossRatesBidAskAsOfHttpPostOut">
    <wsdl:part name="Body" element="tns:FullHistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateHttpPostIn">
    <wsdl:part name="CountryType" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateHttpPostOut">
    <wsdl:part name="Body" element="tns:HistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesHttpPostIn">
    <wsdl:part name="CountryType" type="s:string" />
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateBidAskHttpPostIn">
    <wsdl:part name="CountryType" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRateBidAskHttpPostOut">
    <wsdl:part name="Body" element="tns:FullHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesBidAskHttpPostIn">
    <wsdl:part name="CountryType" type="s:string" />
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetOfficialCrossRatesBidAskHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfFullHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetMutipleHistoricalCrossRatesHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetMutipleHistoricalCrossRatesHttpPostOut">
    <wsdl:part name="Body" element="tns:MultipleHistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRatesHttpPostIn">
    <wsdl:part name="Symbols" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRatesHttpPostOut">
    <wsdl:part name="Body" element="tns:ArrayOfAverageHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRateHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetAverageHistoricalCrossRateHttpPostOut">
    <wsdl:part name="Body" element="tns:AverageHistoricalCrossRate" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalMonthlyCrossRatesRangeHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalMonthlyCrossRatesRangeHttpPostOut">
    <wsdl:part name="Body" element="tns:FullHistoricalCrossRates" />
  </wsdl:message>
  <wsdl:message name="GetCrossRateChangeHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCrossRateChangeHttpPostOut">
    <wsdl:part name="Body" element="tns:CrossRateChange" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="PeriodType" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
    <wsdl:part name="Style" type="s:string" />
    <wsdl:part name="Width" type="s:string" />
    <wsdl:part name="Height" type="s:string" />
    <wsdl:part name="Preset" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartHttpPostOut">
    <wsdl:part name="Body" element="tns:HistoricalChart" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartBinaryHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="PeriodType" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
    <wsdl:part name="Style" type="s:string" />
    <wsdl:part name="Width" type="s:string" />
    <wsdl:part name="Height" type="s:string" />
    <wsdl:part name="Preset" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyChartBinaryHttpPostOut">
    <wsdl:part name="Body" element="tns:ChartBinary" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartTime" type="s:string" />
    <wsdl:part name="EndTime" type="s:string" />
    <wsdl:part name="TimeZone" type="s:string" />
    <wsdl:part name="Style" type="s:string" />
    <wsdl:part name="Width" type="s:string" />
    <wsdl:part name="Height" type="s:string" />
    <wsdl:part name="PeriodType" type="s:string" />
    <wsdl:part name="TickPeriods" type="s:string" />
    <wsdl:part name="Preset" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetCurrencyIntradayChartHttpPostOut">
    <wsdl:part name="Body" element="tns:CurrencyChartIntraday" />
  </wsdl:message>
  <wsdl:message name="GetChartDesignHttpPostIn" />
  <wsdl:message name="GetChartDesignHttpPostOut">
    <wsdl:part name="Body" element="tns:ChartDesign" />
  </wsdl:message>
  <wsdl:message name="GetTickHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="Time" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetTickHttpPostOut">
    <wsdl:part name="Body" element="tns:SingleTick" />
  </wsdl:message>
  <wsdl:message name="GetTicksHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartTime" type="s:string" />
    <wsdl:part name="EndTime" type="s:string" />
    <wsdl:part name="TickPrecision" type="s:string" />
    <wsdl:part name="TickPeriods" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetTicksHttpPostOut">
    <wsdl:part name="Body" element="tns:Ticks" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalTicksHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartTime" type="s:string" />
    <wsdl:part name="EndTime" type="s:string" />
    <wsdl:part name="AsOfDate" type="s:string" />
    <wsdl:part name="TickPrecision" type="s:string" />
    <wsdl:part name="TickPeriods" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalTicksHttpPostOut">
    <wsdl:part name="Body" element="tns:Ticks" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalHighLowHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDateTime" type="s:string" />
    <wsdl:part name="EndDateTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetHistoricalHighLowHttpPostOut">
    <wsdl:part name="Body" element="tns:HighLowTick" />
  </wsdl:message>
  <wsdl:message name="GetIntradayHighLowHttpPostIn">
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDateTime" type="s:string" />
    <wsdl:part name="EndDateTime" type="s:string" />
  </wsdl:message>
  <wsdl:message name="GetIntradayHighLowHttpPostOut">
    <wsdl:part name="Body" element="tns:HighLowTick" />
  </wsdl:message>
  <wsdl:portType name="XigniteCurrenciesSoap">
    <wsdl:operation name="ListCurrencies">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">List supported currencies.</wsdl:documentation>
      <wsdl:input message="tns:ListCurrenciesSoapIn" />
      <wsdl:output message="tns:ListCurrenciesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ListActiveCurrencies">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">List supported currencies.</wsdl:documentation>
      <wsdl:input message="tns:ListActiveCurrenciesSoapIn" />
      <wsdl:output message="tns:ListActiveCurrenciesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ListOfficialRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">List supported official rates.</wsdl:documentation>
      <wsdl:input message="tns:ListOfficialRatesSoapIn" />
      <wsdl:output message="tns:ListOfficialRatesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetUnitOfAccount">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Get Unit Of Account.</wsdl:documentation>
      <wsdl:input message="tns:GetUnitOfAccountSoapIn" />
      <wsdl:output message="tns:GetUnitOfAccountSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ConvertRealTimeValue">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Convert value from one currency to another in real-time.</wsdl:documentation>
      <wsdl:input message="tns:ConvertRealTimeValueSoapIn" />
      <wsdl:output message="tns:ConvertRealTimeValueSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ConvertHistoricalValue">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Convert value from one currency to another as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:ConvertHistoricalValueSoapIn" />
      <wsdl:output message="tns:ConvertHistoricalValueSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeForwardRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a set of real-time currency forward rates.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeForwardRateSoapIn" />
      <wsdl:output message="tns:GetRealTimeForwardRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateAsString">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateAsStringSoapIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateAsStringSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the latest possible cross rate.</wsdl:documentation>
      <wsdl:input message="tns:GetLatestCrossRateSoapIn" />
      <wsdl:output message="tns:GetLatestCrossRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the latest possible cross rate.</wsdl:documentation>
      <wsdl:input message="tns:GetLatestCrossRatesSoapIn" />
      <wsdl:output message="tns:GetLatestCrossRatesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateSoapIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateGMT">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate with the times in GMT.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateGMTSoapIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateGMTSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRawCrossRateSoapIn" />
      <wsdl:output message="tns:GetRawCrossRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRawCrossRatesSoapIn" />
      <wsdl:output message="tns:GetRawCrossRatesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the latest possible cross rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRatesSoapIn" />
      <wsdl:output message="tns:GetRealTimeCrossRatesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTables">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns historical currency cross-rate tables for a range of dates.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTablesSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTablesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTablesBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns historical currency cross-rate tables for a range of dates.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTablesBidAskSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTablesBidAskSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyReport">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns historical currency cross-rate tables for a range of dates.</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyReportSoapIn" />
      <wsdl:output message="tns:GetCurrencyReportSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTable">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a historical currency cross-rate table.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTableSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTableSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a historical currency cross-rate table.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTableBidAskSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTableBidAskSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTable">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate table.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateTableSoapIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateTableSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableWithBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate table.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateTableWithBidAskSoapIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateTableWithBidAskSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetAllCrossRatesForACurrency">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns all valid cross rates for a currency.</wsdl:documentation>
      <wsdl:input message="tns:GetAllCrossRatesForACurrencySoapIn" />
      <wsdl:output message="tns:GetAllCrossRatesForACurrencySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableAsHTML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate table as an HTML Output.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateTableAsHTMLSoapIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateTableAsHTMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetSimpleRealTimeCrossRateTableAsHTML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate table as an HTML Output.</wsdl:documentation>
      <wsdl:input message="tns:GetSimpleRealTimeCrossRateTableAsHTMLSoapIn" />
      <wsdl:output message="tns:GetSimpleRealTimeCrossRateTableAsHTMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableAsHTML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a historical currency cross-rate table as an HTML Output.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTableAsHTMLSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTableAsHTMLSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns multiple cross-rates as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a cross-rate with bid/ask as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateBidAskSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateBidAskSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns multiple cross-rates with bid/ask as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesBidAskSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesBidAskSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesRange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a range of cross-rates for a currency pair. </wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesRangeSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesRangeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskRange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a range of cross-rates for a currency pair. </wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesBidAskRangeSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesBidAskRangeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesAsOf">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a range of cross-rates for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesAsOfSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesAsOfSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskAsOf">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a range of cross-rates for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesBidAskAsOfSoapIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesBidAskAsOfSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an official cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetOfficialCrossRateSoapIn" />
      <wsdl:output message="tns:GetOfficialCrossRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an official cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetOfficialCrossRatesSoapIn" />
      <wsdl:output message="tns:GetOfficialCrossRatesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRateBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an official cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetOfficialCrossRateBidAskSoapIn" />
      <wsdl:output message="tns:GetOfficialCrossRateBidAskSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRatesBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an official cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetOfficialCrossRatesBidAskSoapIn" />
      <wsdl:output message="tns:GetOfficialCrossRatesBidAskSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMutipleHistoricalCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns multiple cross-rates as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetMutipleHistoricalCrossRatesSoapIn" />
      <wsdl:output message="tns:GetMutipleHistoricalCrossRatesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns an array average daily historical cross-rates for a period. </wsdl:documentation>
      <wsdl:input message="tns:GetAverageHistoricalCrossRatesSoapIn" />
      <wsdl:output message="tns:GetAverageHistoricalCrossRatesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns an average daily historical cross-rates for a period. </wsdl:documentation>
      <wsdl:input message="tns:GetAverageHistoricalCrossRateSoapIn" />
      <wsdl:output message="tns:GetAverageHistoricalCrossRateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalMonthlyCrossRatesRange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a complete range of stock quotes for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalMonthlyCrossRatesRangeSoapIn" />
      <wsdl:output message="tns:GetHistoricalMonthlyCrossRatesRangeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCrossRateChange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns the changes in a cross-rates over the last 6 months. </wsdl:documentation>
      <wsdl:input message="tns:GetCrossRateChangeSoapIn" />
      <wsdl:output message="tns:GetCrossRateChangeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartCustom">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a custom currency chart for a date range.</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyChartCustomSoapIn" />
      <wsdl:output message="tns:GetCurrencyChartCustomSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartCustomBinary">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a custom currency chart for a date range.</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyChartCustomBinarySoapIn" />
      <wsdl:output message="tns:GetCurrencyChartCustomBinarySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChart">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a historical currency chart for a date range.</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyChartSoapIn" />
      <wsdl:output message="tns:GetCurrencyChartSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartBinary">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a historical currency chart for a date range in binary format.</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyChartBinarySoapIn" />
      <wsdl:output message="tns:GetCurrencyChartBinarySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChart">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a intraday currency chart for a time range</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyIntradayChartSoapIn" />
      <wsdl:output message="tns:GetCurrencyIntradayChartSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChartCustomBinary">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a intraday currency chart for a time range in a binary format</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyIntradayChartCustomBinarySoapIn" />
      <wsdl:output message="tns:GetCurrencyIntradayChartCustomBinarySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChartCustom">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a intraday currency chart for a time range in a binary format</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyIntradayChartCustomSoapIn" />
      <wsdl:output message="tns:GetCurrencyIntradayChartCustomSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetChartDesign">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the default design class for the currency Chart.</wsdl:documentation>
      <wsdl:input message="tns:GetChartDesignSoapIn" />
      <wsdl:output message="tns:GetChartDesignSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetTick">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a tick for a currency pair as of a specific time in the day.</wsdl:documentation>
      <wsdl:input message="tns:GetTickSoapIn" />
      <wsdl:output message="tns:GetTickSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetTicks">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a range of ticks for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetTicksSoapIn" />
      <wsdl:output message="tns:GetTicksSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalTicks">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a range of ticks for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalTicksSoapIn" />
      <wsdl:output message="tns:GetHistoricalTicksSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalHighLow">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the high and the low ticks for a historical time range.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalHighLowSoapIn" />
      <wsdl:output message="tns:GetHistoricalHighLowSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="GetIntradayHighLow">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the high and the low ticks for today.</wsdl:documentation>
      <wsdl:input message="tns:GetIntradayHighLowSoapIn" />
      <wsdl:output message="tns:GetIntradayHighLowSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="XigniteCurrenciesHttpGet">
    <wsdl:operation name="ListCurrencies">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">List supported currencies.</wsdl:documentation>
      <wsdl:input message="tns:ListCurrenciesHttpGetIn" />
      <wsdl:output message="tns:ListCurrenciesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ListActiveCurrencies">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">List supported currencies.</wsdl:documentation>
      <wsdl:input message="tns:ListActiveCurrenciesHttpGetIn" />
      <wsdl:output message="tns:ListActiveCurrenciesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ListOfficialRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">List supported official rates.</wsdl:documentation>
      <wsdl:input message="tns:ListOfficialRatesHttpGetIn" />
      <wsdl:output message="tns:ListOfficialRatesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetUnitOfAccount">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Get Unit Of Account.</wsdl:documentation>
      <wsdl:input message="tns:GetUnitOfAccountHttpGetIn" />
      <wsdl:output message="tns:GetUnitOfAccountHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ConvertRealTimeValue">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Convert value from one currency to another in real-time.</wsdl:documentation>
      <wsdl:input message="tns:ConvertRealTimeValueHttpGetIn" />
      <wsdl:output message="tns:ConvertRealTimeValueHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ConvertHistoricalValue">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Convert value from one currency to another as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:ConvertHistoricalValueHttpGetIn" />
      <wsdl:output message="tns:ConvertHistoricalValueHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeForwardRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a set of real-time currency forward rates.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeForwardRateHttpGetIn" />
      <wsdl:output message="tns:GetRealTimeForwardRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateAsString">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateAsStringHttpGetIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateAsStringHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the latest possible cross rate.</wsdl:documentation>
      <wsdl:input message="tns:GetLatestCrossRateHttpGetIn" />
      <wsdl:output message="tns:GetLatestCrossRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the latest possible cross rate.</wsdl:documentation>
      <wsdl:input message="tns:GetLatestCrossRatesHttpGetIn" />
      <wsdl:output message="tns:GetLatestCrossRatesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateHttpGetIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateGMT">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate with the times in GMT.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateGMTHttpGetIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateGMTHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRawCrossRateHttpGetIn" />
      <wsdl:output message="tns:GetRawCrossRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRawCrossRatesHttpGetIn" />
      <wsdl:output message="tns:GetRawCrossRatesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the latest possible cross rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRatesHttpGetIn" />
      <wsdl:output message="tns:GetRealTimeCrossRatesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTables">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns historical currency cross-rate tables for a range of dates.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTablesHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTablesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTablesBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns historical currency cross-rate tables for a range of dates.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTablesBidAskHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTablesBidAskHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyReport">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns historical currency cross-rate tables for a range of dates.</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyReportHttpGetIn" />
      <wsdl:output message="tns:GetCurrencyReportHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTable">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a historical currency cross-rate table.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTableHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTableHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a historical currency cross-rate table.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTableBidAskHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTableBidAskHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTable">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate table.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateTableHttpGetIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateTableHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableWithBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate table.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateTableWithBidAskHttpGetIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateTableWithBidAskHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetAllCrossRatesForACurrency">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns all valid cross rates for a currency.</wsdl:documentation>
      <wsdl:input message="tns:GetAllCrossRatesForACurrencyHttpGetIn" />
      <wsdl:output message="tns:GetAllCrossRatesForACurrencyHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableAsHTML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate table as an HTML Output.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateTableAsHTMLHttpGetIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateTableAsHTMLHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetSimpleRealTimeCrossRateTableAsHTML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate table as an HTML Output.</wsdl:documentation>
      <wsdl:input message="tns:GetSimpleRealTimeCrossRateTableAsHTMLHttpGetIn" />
      <wsdl:output message="tns:GetSimpleRealTimeCrossRateTableAsHTMLHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableAsHTML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a historical currency cross-rate table as an HTML Output.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTableAsHTMLHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTableAsHTMLHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns multiple cross-rates as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a cross-rate with bid/ask as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateBidAskHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateBidAskHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns multiple cross-rates with bid/ask as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesBidAskHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesBidAskHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesRange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a range of cross-rates for a currency pair. </wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesRangeHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesRangeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskRange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a range of cross-rates for a currency pair. </wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesBidAskRangeHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesBidAskRangeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesAsOf">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a range of cross-rates for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesAsOfHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesAsOfHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskAsOf">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a range of cross-rates for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesBidAskAsOfHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesBidAskAsOfHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an official cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetOfficialCrossRateHttpGetIn" />
      <wsdl:output message="tns:GetOfficialCrossRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an official cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetOfficialCrossRatesHttpGetIn" />
      <wsdl:output message="tns:GetOfficialCrossRatesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRateBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an official cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetOfficialCrossRateBidAskHttpGetIn" />
      <wsdl:output message="tns:GetOfficialCrossRateBidAskHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRatesBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an official cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetOfficialCrossRatesBidAskHttpGetIn" />
      <wsdl:output message="tns:GetOfficialCrossRatesBidAskHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMutipleHistoricalCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns multiple cross-rates as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetMutipleHistoricalCrossRatesHttpGetIn" />
      <wsdl:output message="tns:GetMutipleHistoricalCrossRatesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns an array average daily historical cross-rates for a period. </wsdl:documentation>
      <wsdl:input message="tns:GetAverageHistoricalCrossRatesHttpGetIn" />
      <wsdl:output message="tns:GetAverageHistoricalCrossRatesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns an average daily historical cross-rates for a period. </wsdl:documentation>
      <wsdl:input message="tns:GetAverageHistoricalCrossRateHttpGetIn" />
      <wsdl:output message="tns:GetAverageHistoricalCrossRateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalMonthlyCrossRatesRange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a complete range of stock quotes for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalMonthlyCrossRatesRangeHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalMonthlyCrossRatesRangeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCrossRateChange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns the changes in a cross-rates over the last 6 months. </wsdl:documentation>
      <wsdl:input message="tns:GetCrossRateChangeHttpGetIn" />
      <wsdl:output message="tns:GetCrossRateChangeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChart">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a historical currency chart for a date range.</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyChartHttpGetIn" />
      <wsdl:output message="tns:GetCurrencyChartHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartBinary">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a historical currency chart for a date range in binary format.</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyChartBinaryHttpGetIn" />
      <wsdl:output message="tns:GetCurrencyChartBinaryHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChart">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a intraday currency chart for a time range</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyIntradayChartHttpGetIn" />
      <wsdl:output message="tns:GetCurrencyIntradayChartHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetChartDesign">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the default design class for the currency Chart.</wsdl:documentation>
      <wsdl:input message="tns:GetChartDesignHttpGetIn" />
      <wsdl:output message="tns:GetChartDesignHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetTick">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a tick for a currency pair as of a specific time in the day.</wsdl:documentation>
      <wsdl:input message="tns:GetTickHttpGetIn" />
      <wsdl:output message="tns:GetTickHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetTicks">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a range of ticks for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetTicksHttpGetIn" />
      <wsdl:output message="tns:GetTicksHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalTicks">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a range of ticks for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalTicksHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalTicksHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalHighLow">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the high and the low ticks for a historical time range.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalHighLowHttpGetIn" />
      <wsdl:output message="tns:GetHistoricalHighLowHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="GetIntradayHighLow">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the high and the low ticks for today.</wsdl:documentation>
      <wsdl:input message="tns:GetIntradayHighLowHttpGetIn" />
      <wsdl:output message="tns:GetIntradayHighLowHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="XigniteCurrenciesHttpPost">
    <wsdl:operation name="ListCurrencies">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">List supported currencies.</wsdl:documentation>
      <wsdl:input message="tns:ListCurrenciesHttpPostIn" />
      <wsdl:output message="tns:ListCurrenciesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ListActiveCurrencies">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">List supported currencies.</wsdl:documentation>
      <wsdl:input message="tns:ListActiveCurrenciesHttpPostIn" />
      <wsdl:output message="tns:ListActiveCurrenciesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ListOfficialRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">List supported official rates.</wsdl:documentation>
      <wsdl:input message="tns:ListOfficialRatesHttpPostIn" />
      <wsdl:output message="tns:ListOfficialRatesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetUnitOfAccount">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Get Unit Of Account.</wsdl:documentation>
      <wsdl:input message="tns:GetUnitOfAccountHttpPostIn" />
      <wsdl:output message="tns:GetUnitOfAccountHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ConvertRealTimeValue">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Convert value from one currency to another in real-time.</wsdl:documentation>
      <wsdl:input message="tns:ConvertRealTimeValueHttpPostIn" />
      <wsdl:output message="tns:ConvertRealTimeValueHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ConvertHistoricalValue">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Convert value from one currency to another as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:ConvertHistoricalValueHttpPostIn" />
      <wsdl:output message="tns:ConvertHistoricalValueHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeForwardRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a set of real-time currency forward rates.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeForwardRateHttpPostIn" />
      <wsdl:output message="tns:GetRealTimeForwardRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateAsString">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateAsStringHttpPostIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateAsStringHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the latest possible cross rate.</wsdl:documentation>
      <wsdl:input message="tns:GetLatestCrossRateHttpPostIn" />
      <wsdl:output message="tns:GetLatestCrossRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the latest possible cross rate.</wsdl:documentation>
      <wsdl:input message="tns:GetLatestCrossRatesHttpPostIn" />
      <wsdl:output message="tns:GetLatestCrossRatesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateHttpPostIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateGMT">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate with the times in GMT.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateGMTHttpPostIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateGMTHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRawCrossRateHttpPostIn" />
      <wsdl:output message="tns:GetRawCrossRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRawCrossRatesHttpPostIn" />
      <wsdl:output message="tns:GetRawCrossRatesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the latest possible cross rate.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRatesHttpPostIn" />
      <wsdl:output message="tns:GetRealTimeCrossRatesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTables">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns historical currency cross-rate tables for a range of dates.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTablesHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTablesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTablesBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns historical currency cross-rate tables for a range of dates.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTablesBidAskHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTablesBidAskHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyReport">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns historical currency cross-rate tables for a range of dates.</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyReportHttpPostIn" />
      <wsdl:output message="tns:GetCurrencyReportHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTable">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a historical currency cross-rate table.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTableHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTableHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a historical currency cross-rate table.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTableBidAskHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTableBidAskHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTable">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate table.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateTableHttpPostIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateTableHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableWithBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate table.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateTableWithBidAskHttpPostIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateTableWithBidAskHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetAllCrossRatesForACurrency">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns all valid cross rates for a currency.</wsdl:documentation>
      <wsdl:input message="tns:GetAllCrossRatesForACurrencyHttpPostIn" />
      <wsdl:output message="tns:GetAllCrossRatesForACurrencyHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableAsHTML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate table as an HTML Output.</wsdl:documentation>
      <wsdl:input message="tns:GetRealTimeCrossRateTableAsHTMLHttpPostIn" />
      <wsdl:output message="tns:GetRealTimeCrossRateTableAsHTMLHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetSimpleRealTimeCrossRateTableAsHTML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a real-time currency cross-rate table as an HTML Output.</wsdl:documentation>
      <wsdl:input message="tns:GetSimpleRealTimeCrossRateTableAsHTMLHttpPostIn" />
      <wsdl:output message="tns:GetSimpleRealTimeCrossRateTableAsHTMLHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableAsHTML">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a historical currency cross-rate table as an HTML Output.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateTableAsHTMLHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateTableAsHTMLHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns multiple cross-rates as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a cross-rate with bid/ask as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRateBidAskHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRateBidAskHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns multiple cross-rates with bid/ask as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesBidAskHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesBidAskHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesRange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a range of cross-rates for a currency pair. </wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesRangeHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesRangeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskRange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a range of cross-rates for a currency pair. </wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesBidAskRangeHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesBidAskRangeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesAsOf">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a range of cross-rates for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesAsOfHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesAsOfHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskAsOf">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a range of cross-rates for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalCrossRatesBidAskAsOfHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalCrossRatesBidAskAsOfHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an official cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetOfficialCrossRateHttpPostIn" />
      <wsdl:output message="tns:GetOfficialCrossRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an official cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetOfficialCrossRatesHttpPostIn" />
      <wsdl:output message="tns:GetOfficialCrossRatesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRateBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an official cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetOfficialCrossRateBidAskHttpPostIn" />
      <wsdl:output message="tns:GetOfficialCrossRateBidAskHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRatesBidAsk">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an official cross-rate as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetOfficialCrossRatesBidAskHttpPostIn" />
      <wsdl:output message="tns:GetOfficialCrossRatesBidAskHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetMutipleHistoricalCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns multiple cross-rates as of a historical date.</wsdl:documentation>
      <wsdl:input message="tns:GetMutipleHistoricalCrossRatesHttpPostIn" />
      <wsdl:output message="tns:GetMutipleHistoricalCrossRatesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRates">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns an array average daily historical cross-rates for a period. </wsdl:documentation>
      <wsdl:input message="tns:GetAverageHistoricalCrossRatesHttpPostIn" />
      <wsdl:output message="tns:GetAverageHistoricalCrossRatesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns an average daily historical cross-rates for a period. </wsdl:documentation>
      <wsdl:input message="tns:GetAverageHistoricalCrossRateHttpPostIn" />
      <wsdl:output message="tns:GetAverageHistoricalCrossRateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalMonthlyCrossRatesRange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns a complete range of stock quotes for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalMonthlyCrossRatesRangeHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalMonthlyCrossRatesRangeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCrossRateChange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">This operation returns the changes in a cross-rates over the last 6 months. </wsdl:documentation>
      <wsdl:input message="tns:GetCrossRateChangeHttpPostIn" />
      <wsdl:output message="tns:GetCrossRateChangeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChart">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a historical currency chart for a date range.</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyChartHttpPostIn" />
      <wsdl:output message="tns:GetCurrencyChartHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartBinary">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a historical currency chart for a date range in binary format.</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyChartBinaryHttpPostIn" />
      <wsdl:output message="tns:GetCurrencyChartBinaryHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChart">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Draw a intraday currency chart for a time range</wsdl:documentation>
      <wsdl:input message="tns:GetCurrencyIntradayChartHttpPostIn" />
      <wsdl:output message="tns:GetCurrencyIntradayChartHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetChartDesign">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the default design class for the currency Chart.</wsdl:documentation>
      <wsdl:input message="tns:GetChartDesignHttpPostIn" />
      <wsdl:output message="tns:GetChartDesignHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetTick">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a tick for a currency pair as of a specific time in the day.</wsdl:documentation>
      <wsdl:input message="tns:GetTickHttpPostIn" />
      <wsdl:output message="tns:GetTickHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetTicks">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a range of ticks for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetTicksHttpPostIn" />
      <wsdl:output message="tns:GetTicksHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalTicks">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a range of ticks for a currency pair.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalTicksHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalTicksHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalHighLow">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the high and the low ticks for a historical time range.</wsdl:documentation>
      <wsdl:input message="tns:GetHistoricalHighLowHttpPostIn" />
      <wsdl:output message="tns:GetHistoricalHighLowHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="GetIntradayHighLow">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the high and the low ticks for today.</wsdl:documentation>
      <wsdl:input message="tns:GetIntradayHighLowHttpPostIn" />
      <wsdl:output message="tns:GetIntradayHighLowHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="XigniteCurrenciesSoap" type="tns:XigniteCurrenciesSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="ListCurrencies">
      <soap:operation soapAction="http://www.xignite.com/services/ListCurrencies" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:ListCurrenciesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ListActiveCurrencies">
      <soap:operation soapAction="http://www.xignite.com/services/ListActiveCurrencies" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:ListActiveCurrenciesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ListOfficialRates">
      <soap:operation soapAction="http://www.xignite.com/services/ListOfficialRates" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:ListOfficialRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetUnitOfAccount">
      <soap:operation soapAction="http://www.xignite.com/services/GetUnitOfAccount" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetUnitOfAccountHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertRealTimeValue">
      <soap:operation soapAction="http://www.xignite.com/services/ConvertRealTimeValue" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:ConvertRealTimeValueHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertHistoricalValue">
      <soap:operation soapAction="http://www.xignite.com/services/ConvertHistoricalValue" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:ConvertHistoricalValueHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeForwardRate">
      <soap:operation soapAction="http://www.xignite.com/services/GetRealTimeForwardRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetRealTimeForwardRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateAsString">
      <soap:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRateAsString" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetRealTimeCrossRateAsStringHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRate">
      <soap:operation soapAction="http://www.xignite.com/services/GetLatestCrossRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetLatestCrossRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRates">
      <soap:operation soapAction="http://www.xignite.com/services/GetLatestCrossRates" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetLatestCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRate">
      <soap:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetRealTimeCrossRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateGMT">
      <soap:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRateGMT" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetRealTimeCrossRateGMTHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRate">
      <soap:operation soapAction="http://www.xignite.com/services/GetRawCrossRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetRawCrossRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRates">
      <soap:operation soapAction="http://www.xignite.com/services/GetRawCrossRates" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetRawCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRates">
      <soap:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRates" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetRealTimeCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTables">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRateTables" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRateTablesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTablesBidAsk">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRateTablesBidAsk" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRateTablesBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyReport">
      <soap:operation soapAction="http://www.xignite.com/services/GetCurrencyReport" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetCurrencyReportHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTable">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRateTable" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRateTableHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableBidAsk">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRateTableBidAsk" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRateTableBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTable">
      <soap:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRateTable" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetRealTimeCrossRateTableHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableWithBidAsk">
      <soap:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRateTableWithBidAsk" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetRealTimeCrossRateTableWithBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAllCrossRatesForACurrency">
      <soap:operation soapAction="http://www.xignite.com/services/GetAllCrossRatesForACurrency" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetAllCrossRatesForACurrencyHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableAsHTML">
      <soap:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRateTableAsHTML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetRealTimeCrossRateTableAsHTMLHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetSimpleRealTimeCrossRateTableAsHTML">
      <soap:operation soapAction="http://www.xignite.com/services/GetSimpleRealTimeCrossRateTableAsHTML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetSimpleRealTimeCrossRateTableAsHTMLHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableAsHTML">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRateTableAsHTML" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRateTableAsHTMLHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRate">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRates">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRates" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateBidAsk">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRateBidAsk" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRateBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAsk">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRatesBidAsk" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRatesBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesRange">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRatesRange" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRatesRangeHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskRange">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRatesBidAskRange" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRatesBidAskRangeHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesAsOf">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRatesAsOf" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRatesAsOfHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskAsOf">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRatesBidAskAsOf" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalCrossRatesBidAskAsOfHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRate">
      <soap:operation soapAction="http://www.xignite.com/services/GetOfficialCrossRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetOfficialCrossRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRates">
      <soap:operation soapAction="http://www.xignite.com/services/GetOfficialCrossRates" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetOfficialCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRateBidAsk">
      <soap:operation soapAction="http://www.xignite.com/services/GetOfficialCrossRateBidAsk" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetOfficialCrossRateBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRatesBidAsk">
      <soap:operation soapAction="http://www.xignite.com/services/GetOfficialCrossRatesBidAsk" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetOfficialCrossRatesBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMutipleHistoricalCrossRates">
      <soap:operation soapAction="http://www.xignite.com/services/GetMutipleHistoricalCrossRates" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetMutipleHistoricalCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRates">
      <soap:operation soapAction="http://www.xignite.com/services/GetAverageHistoricalCrossRates" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetAverageHistoricalCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRate">
      <soap:operation soapAction="http://www.xignite.com/services/GetAverageHistoricalCrossRate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetAverageHistoricalCrossRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalMonthlyCrossRatesRange">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalMonthlyCrossRatesRange" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalMonthlyCrossRatesRangeHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCrossRateChange">
      <soap:operation soapAction="http://www.xignite.com/services/GetCrossRateChange" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetCrossRateChangeHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartCustom">
      <soap:operation soapAction="http://www.xignite.com/services/GetCurrencyChartCustom" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetCurrencyChartCustomHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartCustomBinary">
      <soap:operation soapAction="http://www.xignite.com/services/GetCurrencyChartCustomBinary" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetCurrencyChartCustomBinaryHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChart">
      <soap:operation soapAction="http://www.xignite.com/services/GetCurrencyChart" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetCurrencyChartHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartBinary">
      <soap:operation soapAction="http://www.xignite.com/services/GetCurrencyChartBinary" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetCurrencyChartBinaryHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChart">
      <soap:operation soapAction="http://www.xignite.com/services/GetCurrencyIntradayChart" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetCurrencyIntradayChartHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChartCustomBinary">
      <soap:operation soapAction="http://www.xignite.com/services/GetCurrencyIntradayChartCustomBinary" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetCurrencyIntradayChartCustomBinaryHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChartCustom">
      <soap:operation soapAction="http://www.xignite.com/services/GetCurrencyIntradayChartCustom" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetCurrencyIntradayChartCustomHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetChartDesign">
      <soap:operation soapAction="http://www.xignite.com/services/GetChartDesign" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetChartDesignHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTick">
      <soap:operation soapAction="http://www.xignite.com/services/GetTick" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetTickHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTicks">
      <soap:operation soapAction="http://www.xignite.com/services/GetTicks" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetTicksHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalTicks">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalTicks" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalTicksHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalHighLow">
      <soap:operation soapAction="http://www.xignite.com/services/GetHistoricalHighLow" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetHistoricalHighLowHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetIntradayHighLow">
      <soap:operation soapAction="http://www.xignite.com/services/GetIntradayHighLow" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
        <soap:header message="tns:GetIntradayHighLowHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="XigniteCurrenciesSoap12" type="tns:XigniteCurrenciesSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="ListCurrencies">
      <soap12:operation soapAction="http://www.xignite.com/services/ListCurrencies" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:ListCurrenciesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ListActiveCurrencies">
      <soap12:operation soapAction="http://www.xignite.com/services/ListActiveCurrencies" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:ListActiveCurrenciesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ListOfficialRates">
      <soap12:operation soapAction="http://www.xignite.com/services/ListOfficialRates" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:ListOfficialRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetUnitOfAccount">
      <soap12:operation soapAction="http://www.xignite.com/services/GetUnitOfAccount" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetUnitOfAccountHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertRealTimeValue">
      <soap12:operation soapAction="http://www.xignite.com/services/ConvertRealTimeValue" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:ConvertRealTimeValueHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertHistoricalValue">
      <soap12:operation soapAction="http://www.xignite.com/services/ConvertHistoricalValue" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:ConvertHistoricalValueHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeForwardRate">
      <soap12:operation soapAction="http://www.xignite.com/services/GetRealTimeForwardRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetRealTimeForwardRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateAsString">
      <soap12:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRateAsString" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetRealTimeCrossRateAsStringHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRate">
      <soap12:operation soapAction="http://www.xignite.com/services/GetLatestCrossRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetLatestCrossRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRates">
      <soap12:operation soapAction="http://www.xignite.com/services/GetLatestCrossRates" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetLatestCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRate">
      <soap12:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetRealTimeCrossRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateGMT">
      <soap12:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRateGMT" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetRealTimeCrossRateGMTHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRate">
      <soap12:operation soapAction="http://www.xignite.com/services/GetRawCrossRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetRawCrossRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRates">
      <soap12:operation soapAction="http://www.xignite.com/services/GetRawCrossRates" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetRawCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRates">
      <soap12:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRates" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetRealTimeCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTables">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRateTables" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRateTablesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTablesBidAsk">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRateTablesBidAsk" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRateTablesBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyReport">
      <soap12:operation soapAction="http://www.xignite.com/services/GetCurrencyReport" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetCurrencyReportHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTable">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRateTable" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRateTableHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableBidAsk">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRateTableBidAsk" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRateTableBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTable">
      <soap12:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRateTable" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetRealTimeCrossRateTableHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableWithBidAsk">
      <soap12:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRateTableWithBidAsk" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetRealTimeCrossRateTableWithBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAllCrossRatesForACurrency">
      <soap12:operation soapAction="http://www.xignite.com/services/GetAllCrossRatesForACurrency" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetAllCrossRatesForACurrencyHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableAsHTML">
      <soap12:operation soapAction="http://www.xignite.com/services/GetRealTimeCrossRateTableAsHTML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetRealTimeCrossRateTableAsHTMLHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetSimpleRealTimeCrossRateTableAsHTML">
      <soap12:operation soapAction="http://www.xignite.com/services/GetSimpleRealTimeCrossRateTableAsHTML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetSimpleRealTimeCrossRateTableAsHTMLHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableAsHTML">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRateTableAsHTML" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRateTableAsHTMLHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRate">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRates">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRates" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateBidAsk">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRateBidAsk" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRateBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAsk">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRatesBidAsk" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRatesBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesRange">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRatesRange" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRatesRangeHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskRange">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRatesBidAskRange" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRatesBidAskRangeHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesAsOf">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRatesAsOf" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRatesAsOfHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskAsOf">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalCrossRatesBidAskAsOf" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalCrossRatesBidAskAsOfHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRate">
      <soap12:operation soapAction="http://www.xignite.com/services/GetOfficialCrossRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetOfficialCrossRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRates">
      <soap12:operation soapAction="http://www.xignite.com/services/GetOfficialCrossRates" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetOfficialCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRateBidAsk">
      <soap12:operation soapAction="http://www.xignite.com/services/GetOfficialCrossRateBidAsk" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetOfficialCrossRateBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRatesBidAsk">
      <soap12:operation soapAction="http://www.xignite.com/services/GetOfficialCrossRatesBidAsk" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetOfficialCrossRatesBidAskHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMutipleHistoricalCrossRates">
      <soap12:operation soapAction="http://www.xignite.com/services/GetMutipleHistoricalCrossRates" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetMutipleHistoricalCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRates">
      <soap12:operation soapAction="http://www.xignite.com/services/GetAverageHistoricalCrossRates" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetAverageHistoricalCrossRatesHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRate">
      <soap12:operation soapAction="http://www.xignite.com/services/GetAverageHistoricalCrossRate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetAverageHistoricalCrossRateHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalMonthlyCrossRatesRange">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalMonthlyCrossRatesRange" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalMonthlyCrossRatesRangeHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCrossRateChange">
      <soap12:operation soapAction="http://www.xignite.com/services/GetCrossRateChange" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetCrossRateChangeHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartCustom">
      <soap12:operation soapAction="http://www.xignite.com/services/GetCurrencyChartCustom" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetCurrencyChartCustomHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartCustomBinary">
      <soap12:operation soapAction="http://www.xignite.com/services/GetCurrencyChartCustomBinary" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetCurrencyChartCustomBinaryHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChart">
      <soap12:operation soapAction="http://www.xignite.com/services/GetCurrencyChart" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetCurrencyChartHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartBinary">
      <soap12:operation soapAction="http://www.xignite.com/services/GetCurrencyChartBinary" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetCurrencyChartBinaryHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChart">
      <soap12:operation soapAction="http://www.xignite.com/services/GetCurrencyIntradayChart" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetCurrencyIntradayChartHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChartCustomBinary">
      <soap12:operation soapAction="http://www.xignite.com/services/GetCurrencyIntradayChartCustomBinary" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetCurrencyIntradayChartCustomBinaryHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChartCustom">
      <soap12:operation soapAction="http://www.xignite.com/services/GetCurrencyIntradayChartCustom" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetCurrencyIntradayChartCustomHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetChartDesign">
      <soap12:operation soapAction="http://www.xignite.com/services/GetChartDesign" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetChartDesignHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTick">
      <soap12:operation soapAction="http://www.xignite.com/services/GetTick" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetTickHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTicks">
      <soap12:operation soapAction="http://www.xignite.com/services/GetTicks" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetTicksHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalTicks">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalTicks" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalTicksHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalHighLow">
      <soap12:operation soapAction="http://www.xignite.com/services/GetHistoricalHighLow" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetHistoricalHighLowHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetIntradayHighLow">
      <soap12:operation soapAction="http://www.xignite.com/services/GetIntradayHighLow" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
        <soap12:header message="tns:GetIntradayHighLowHeader" part="Header" use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="XigniteCurrenciesHttpGet" type="tns:XigniteCurrenciesHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="ListCurrencies">
      <http:operation location="/ListCurrencies" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ListActiveCurrencies">
      <http:operation location="/ListActiveCurrencies" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ListOfficialRates">
      <http:operation location="/ListOfficialRates" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetUnitOfAccount">
      <http:operation location="/GetUnitOfAccount" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertRealTimeValue">
      <http:operation location="/ConvertRealTimeValue" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertHistoricalValue">
      <http:operation location="/ConvertHistoricalValue" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeForwardRate">
      <http:operation location="/GetRealTimeForwardRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateAsString">
      <http:operation location="/GetRealTimeCrossRateAsString" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRate">
      <http:operation location="/GetLatestCrossRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRates">
      <http:operation location="/GetLatestCrossRates" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRate">
      <http:operation location="/GetRealTimeCrossRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateGMT">
      <http:operation location="/GetRealTimeCrossRateGMT" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRate">
      <http:operation location="/GetRawCrossRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRates">
      <http:operation location="/GetRawCrossRates" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRates">
      <http:operation location="/GetRealTimeCrossRates" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTables">
      <http:operation location="/GetHistoricalCrossRateTables" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTablesBidAsk">
      <http:operation location="/GetHistoricalCrossRateTablesBidAsk" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyReport">
      <http:operation location="/GetCurrencyReport" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTable">
      <http:operation location="/GetHistoricalCrossRateTable" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableBidAsk">
      <http:operation location="/GetHistoricalCrossRateTableBidAsk" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTable">
      <http:operation location="/GetRealTimeCrossRateTable" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableWithBidAsk">
      <http:operation location="/GetRealTimeCrossRateTableWithBidAsk" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAllCrossRatesForACurrency">
      <http:operation location="/GetAllCrossRatesForACurrency" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableAsHTML">
      <http:operation location="/GetRealTimeCrossRateTableAsHTML" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetSimpleRealTimeCrossRateTableAsHTML">
      <http:operation location="/GetSimpleRealTimeCrossRateTableAsHTML" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableAsHTML">
      <http:operation location="/GetHistoricalCrossRateTableAsHTML" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRate">
      <http:operation location="/GetHistoricalCrossRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRates">
      <http:operation location="/GetHistoricalCrossRates" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateBidAsk">
      <http:operation location="/GetHistoricalCrossRateBidAsk" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAsk">
      <http:operation location="/GetHistoricalCrossRatesBidAsk" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesRange">
      <http:operation location="/GetHistoricalCrossRatesRange" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskRange">
      <http:operation location="/GetHistoricalCrossRatesBidAskRange" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesAsOf">
      <http:operation location="/GetHistoricalCrossRatesAsOf" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskAsOf">
      <http:operation location="/GetHistoricalCrossRatesBidAskAsOf" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRate">
      <http:operation location="/GetOfficialCrossRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRates">
      <http:operation location="/GetOfficialCrossRates" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRateBidAsk">
      <http:operation location="/GetOfficialCrossRateBidAsk" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRatesBidAsk">
      <http:operation location="/GetOfficialCrossRatesBidAsk" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMutipleHistoricalCrossRates">
      <http:operation location="/GetMutipleHistoricalCrossRates" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRates">
      <http:operation location="/GetAverageHistoricalCrossRates" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRate">
      <http:operation location="/GetAverageHistoricalCrossRate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalMonthlyCrossRatesRange">
      <http:operation location="/GetHistoricalMonthlyCrossRatesRange" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCrossRateChange">
      <http:operation location="/GetCrossRateChange" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChart">
      <http:operation location="/GetCurrencyChart" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartBinary">
      <http:operation location="/GetCurrencyChartBinary" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChart">
      <http:operation location="/GetCurrencyIntradayChart" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetChartDesign">
      <http:operation location="/GetChartDesign" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTick">
      <http:operation location="/GetTick" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTicks">
      <http:operation location="/GetTicks" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalTicks">
      <http:operation location="/GetHistoricalTicks" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalHighLow">
      <http:operation location="/GetHistoricalHighLow" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetIntradayHighLow">
      <http:operation location="/GetIntradayHighLow" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="XigniteCurrenciesHttpPost" type="tns:XigniteCurrenciesHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="ListCurrencies">
      <http:operation location="/ListCurrencies" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ListActiveCurrencies">
      <http:operation location="/ListActiveCurrencies" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ListOfficialRates">
      <http:operation location="/ListOfficialRates" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetUnitOfAccount">
      <http:operation location="/GetUnitOfAccount" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertRealTimeValue">
      <http:operation location="/ConvertRealTimeValue" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ConvertHistoricalValue">
      <http:operation location="/ConvertHistoricalValue" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeForwardRate">
      <http:operation location="/GetRealTimeForwardRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateAsString">
      <http:operation location="/GetRealTimeCrossRateAsString" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRate">
      <http:operation location="/GetLatestCrossRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetLatestCrossRates">
      <http:operation location="/GetLatestCrossRates" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRate">
      <http:operation location="/GetRealTimeCrossRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateGMT">
      <http:operation location="/GetRealTimeCrossRateGMT" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRate">
      <http:operation location="/GetRawCrossRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRawCrossRates">
      <http:operation location="/GetRawCrossRates" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRates">
      <http:operation location="/GetRealTimeCrossRates" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTables">
      <http:operation location="/GetHistoricalCrossRateTables" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTablesBidAsk">
      <http:operation location="/GetHistoricalCrossRateTablesBidAsk" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyReport">
      <http:operation location="/GetCurrencyReport" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTable">
      <http:operation location="/GetHistoricalCrossRateTable" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableBidAsk">
      <http:operation location="/GetHistoricalCrossRateTableBidAsk" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTable">
      <http:operation location="/GetRealTimeCrossRateTable" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableWithBidAsk">
      <http:operation location="/GetRealTimeCrossRateTableWithBidAsk" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAllCrossRatesForACurrency">
      <http:operation location="/GetAllCrossRatesForACurrency" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetRealTimeCrossRateTableAsHTML">
      <http:operation location="/GetRealTimeCrossRateTableAsHTML" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetSimpleRealTimeCrossRateTableAsHTML">
      <http:operation location="/GetSimpleRealTimeCrossRateTableAsHTML" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateTableAsHTML">
      <http:operation location="/GetHistoricalCrossRateTableAsHTML" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRate">
      <http:operation location="/GetHistoricalCrossRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRates">
      <http:operation location="/GetHistoricalCrossRates" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRateBidAsk">
      <http:operation location="/GetHistoricalCrossRateBidAsk" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAsk">
      <http:operation location="/GetHistoricalCrossRatesBidAsk" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesRange">
      <http:operation location="/GetHistoricalCrossRatesRange" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskRange">
      <http:operation location="/GetHistoricalCrossRatesBidAskRange" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesAsOf">
      <http:operation location="/GetHistoricalCrossRatesAsOf" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalCrossRatesBidAskAsOf">
      <http:operation location="/GetHistoricalCrossRatesBidAskAsOf" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRate">
      <http:operation location="/GetOfficialCrossRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRates">
      <http:operation location="/GetOfficialCrossRates" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRateBidAsk">
      <http:operation location="/GetOfficialCrossRateBidAsk" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetOfficialCrossRatesBidAsk">
      <http:operation location="/GetOfficialCrossRatesBidAsk" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetMutipleHistoricalCrossRates">
      <http:operation location="/GetMutipleHistoricalCrossRates" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRates">
      <http:operation location="/GetAverageHistoricalCrossRates" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetAverageHistoricalCrossRate">
      <http:operation location="/GetAverageHistoricalCrossRate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalMonthlyCrossRatesRange">
      <http:operation location="/GetHistoricalMonthlyCrossRatesRange" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCrossRateChange">
      <http:operation location="/GetCrossRateChange" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChart">
      <http:operation location="/GetCurrencyChart" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyChartBinary">
      <http:operation location="/GetCurrencyChartBinary" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetCurrencyIntradayChart">
      <http:operation location="/GetCurrencyIntradayChart" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetChartDesign">
      <http:operation location="/GetChartDesign" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTick">
      <http:operation location="/GetTick" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetTicks">
      <http:operation location="/GetTicks" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalTicks">
      <http:operation location="/GetHistoricalTicks" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetHistoricalHighLow">
      <http:operation location="/GetHistoricalHighLow" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="GetIntradayHighLow">
      <http:operation location="/GetIntradayHighLow" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="XigniteCurrencies">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Provide real-time currency foreign exchange information and calculations.</wsdl:documentation>
    <wsdl:port name="XigniteCurrenciesSoap" binding="tns:XigniteCurrenciesSoap">
      <soap:address location="http://www.xignite.com/xCurrencies.asmx" />
    </wsdl:port>
    <wsdl:port name="XigniteCurrenciesSoap12" binding="tns:XigniteCurrenciesSoap12">
      <soap12:address location="http://www.xignite.com/xCurrencies.asmx" />
    </wsdl:port>
    <wsdl:port name="XigniteCurrenciesHttpGet" binding="tns:XigniteCurrenciesHttpGet">
      <http:address location="http://www.xignite.com/xCurrencies.asmx" />
    </wsdl:port>
    <wsdl:port name="XigniteCurrenciesHttpPost" binding="tns:XigniteCurrenciesHttpPost">
      <http:address location="http://www.xignite.com/xCurrencies.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>