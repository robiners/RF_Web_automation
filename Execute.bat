#!/bin/bash
:: Run tests
robot --rpa -d Results Tests/Testsuite/test_case.robot ^
Tests/Testsuite/notify.robot
LinkGoogleSheet.py
:: Run notification task
:: robot -d Results Tests/Testsuite/notify.robot