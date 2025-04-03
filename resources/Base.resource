*** Settings ***

# Libs
Library    ../resources/Libs/utils.py

# Configuration
Resource    ../resources/configs/Libs.resource

# Hooks
Resource    ../resources/utils/OpenPage.resource

# Pages Keywords
Resource    ../resources/pages/HomePage.resource

# Variables Locators
Variables    ../resources/locators/HomePageLocators.yml