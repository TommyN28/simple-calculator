set -e
pushd front_end
echo "Type-checking the front end"
call tsc --strict main.ts
popd
echo "Type-checking the back end"
pushd back_end
call py -m mypy main.py --strict --ignore-missing-imports
echo "Running"
call py main.py
popd
echo "Done"
