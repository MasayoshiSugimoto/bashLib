
test.fail() {
	local lineNumber="$1"
	echo "[TEST FAILED] $0:$lineNumber"
	exit 1
}
