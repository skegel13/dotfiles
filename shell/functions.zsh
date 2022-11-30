# function p() {
#   if [ -f vendor/bin/pest ]; then
#     vendor/bin/pest "$@"
#   else
#     vendor/bin/phpunit "$@"
#   fi
# }
#
# function pf() {
#   if [ -f vendor/bin/pest ]; then
#     vendor/bin/pest --filter "$@"
#   else
#     vendor/bin/phpunit --filter "$@"
#   fi
# }
#
# function tinkerwell {
#   if [ $# -eq 0 ] || [ $1 = "." ]; then
#     TW_PATH=$(pwd)
#   else
#     TW_PATH=$1
#   fi
#
#   TW_PATH=$(echo -n $TW_PATH | base64)
#
#   open "tinkerwell://?cwd=$TW_PATH"
# }
