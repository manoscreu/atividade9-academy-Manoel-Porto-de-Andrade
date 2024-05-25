*** Settings ***
Resource    ..//base.robot

*** Variables ***
#Botoes
${ButtonPix}         xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${ButtonPagr}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[2]/android.widget.Button[2]

#Textos
${textoPix}          xpath=//android.widget.ImageView


*** Keywords ***