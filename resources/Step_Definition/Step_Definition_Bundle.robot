*** Settings ***
Variables    ../Config/locators.yaml
Variables    ../Config/config.yaml
Variables    ../Constants/constant.yaml
Resource    Common_TestSteps.robot
Resource    LoginPage_TestSteps.robot
Resource    InventoryPage_TestSteps.robot
Resource    CartPage_TestSteps.robot
Resource    CheckoutInfoPage_TestSteps.robot
Resource    CheckoutOverviewPage_TestSteps.robot
Resource    CheckoutCompletePage_TestSteps.robot
Library    ../PythonMethods/common_python_methods.py