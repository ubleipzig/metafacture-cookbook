SHELL = /bin/bash

input.xml:
	metha-sync http://www.ssoar.info/OAIHandler/request
	metha-cat -root Records http://www.ssoar.info/OAIHandler/request > input.xml

