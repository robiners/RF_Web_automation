#!/bin/bash

# Run tests
robot --rpa --outputdir Results Tests/Testsuite/test_case.robot \
                                Tests/Testsuite/notify.robot
# robot --processes 2 --outputdir Results Tests/Testsuite/*.robot
# Run notification task
# robot -outputdir Results notify.robot