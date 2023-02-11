*** Settings ***
Documentation       Representação do componente toasts

Library     Browser

*** Keywords ***

Verify Toaster
    [Arguments]     ${expectec_message}

    Wait For Elements State
    ...     css=.Toastify__toast-body div >> text=${expectec_message}
    ...     visible     5

    Wait For Elements State
    ...     css=.Toastify__toast-body div
    ...     detached    10

