#!/usr/bin/env zsh
set  -f
#
#
# sum of electronic and thermal energies
#

function g09-sum-of-electronic-and-thermal-energies()
{
	local data="$(awk '/Sum of electronic and thermal Energies=/ { result = $7 } END { print result }' "${1}")"

	"${GAUSSIAN_TOOLS_DIRECTORY:-$HOME/bin}/g09-data-test.zsh" "$data"
}

g09-sum-of-electronic-and-thermal-energies "${1}"


