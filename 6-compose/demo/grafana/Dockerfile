FROM grafana/grafana
# ENV Variables for cofiguration
# Enabled the Anonymous user no user/pass needed
ENV GF_AUTH_ANONYMOUS_ENABLED=true
# Enabled the Anonymous user no user/pass needed
ENV GF_AUTH_ANONYMOUS_ORG_ROLE=Admin
# Disable the AUTH Method
ENV GF_AUTH_BASIC_ENABLED=false
# Disable the login on show
ENV GF_AUTH_DISABLE_LOGIN_FORM=true
# Diabled the menu
ENV GF_AUTH_DISABLE_SIGNOUT_MENU=true
ENV GF_SERVER_SERVE_FROM_SUB_PATH=true
ENV GF_SERVE_FROM_SUB_PATH=true

EXPOSE 3000

CMD [ "grafana-reporter" ]