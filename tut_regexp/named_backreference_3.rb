re = /(?<color>red|green|blue) \w+ \g<color> \w+/
re =~ "red sun blue moon"
re =~ "red sun white moon"
