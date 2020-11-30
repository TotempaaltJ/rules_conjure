set -ex

FILES="airport.rs connection.rs flight_search_service.rs mod.rs search_request.rs search_result.rs"

for file in $FILES; do
    if [[ -f "$1/$file" ]]; then
    echo "Passed: $1/$file"
    else
    echo "Failed: $1/$file"
    exit 1
    fi
done

exit 0
