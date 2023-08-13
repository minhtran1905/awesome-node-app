locals {
  secrets = [
      {
        "name": "AWESOME_NOTE_APP_DATABASE_HOST",
        "valueFrom": "${var.database_host_arn}"
      },
      {
        "name": "AWESOME_NOTE_APP_PASSWORD",
        "valueFrom": "${var.database_password_arn}"
      },
      {
        "name": "RAILS_MASTER_KEY",
        "valueFrom": "${var.master_key_arn}"
      },
      {
        "name":  "REDIS_URL",
        "valueFrom": "${var.redis_address_arn}"

      },
      {
        "name": "GIT_TOKEN",
        "valueFrom": "${var.git_token_arn}"
      }
  ]
  environment     = [
      { "name": "NODE_ENV", "value": "production" },
      { "name": "RAILS_ENV", "value": "${var.env}" },
      { "name": "RAILS_MAX_THREADS", "value" : "16" },
      { "name": "TZ", "value": "Asia/Tokyo" }
]
}
