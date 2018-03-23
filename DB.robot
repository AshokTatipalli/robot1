*** Settings ***
Documentation    Suite description
Library   DatabaseLibrary


*** Test Cases ***

Provided precondition
     Connect To Database  pymysql  qa6_ol01  qa6_ol01   olqa6pass   qamysqldb06.3gqa.satmetrix.com   3312
     ${x}  Query  select * from core_party where party_type_code = 'ENTERPRISE' and primary_idfier = 'VIEWPIN';
  Log  ${x}



Test title
    Connect To Database  pymysql  shared_qa7_ol01  shared_ro   Re@donLy   qamysqldb03.3gqa.satmetrix.com   3312
    @{k} =  Query select PRIMARY_IDFIER, ENTERPRISE_ID from core_party where PARTY_TYPE_CODE='ENTERPRISE' and PRIMARY_IDFIER='SEMANTRIAG'
    log  @{k}