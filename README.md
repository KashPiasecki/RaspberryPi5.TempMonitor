## Description

This straightforward program provides console output for the current temperature of a Raspberry Pi 5, along with color information based on a specified value.

## How to use

1. Ensure that both files, pitmp and pi_temp.sh, have execute permissions. If not, grant them.
2. Place both files inside the /usr/bin/ directory.
3. Execute the program using the command `pitmp`.
4. You can close it anytime using `ctrl + c`.

## Example output:

```
Fri 28 Jun 17:22:31 CEST 2024 user@hostname
----------------------------------------------
Raspberry Pi Temperature: 41.1'C
```

## Color based on temperature:

* 0-50'C - Cyan
* 51-70'C - Green
* 71-90'C - Orange
* 91+'C - Red
