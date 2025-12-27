#!/bin/bash

# Check argument
[ -z "$1" ] && exit 1

DOMAIN="$1"
OUT="${DOMAIN}.csv"

whois "$DOMAIN" | awk '
BEGIN {
    section=""
}

/^Registrant / { section="Registrant" }
(/^Admin / || /^Administrative /) { section="Admin" }
/^Tech / { section="Tech" }

section != "" {
    # Normalize field names
    field=$1
    sub(":", "", field)

    value=$0
    sub(/^[^:]+:[[:space:]]*/, "", value)

    # Handle Street: add space at end
    if (field == "Street") {
        printf "%s %s,%s \n", section, field, value
        next
    }

    # Handle Phone Ext and Fax Ext even if empty
    if (field == "Phone" && $2 == "Ext:") {
        printf "%s Phone Ext:, \n", section
        next
    }

    if (field == "Fax" && $2 == "Ext:") {
        printf "%s Fax Ext:, \n", section
        next
    }

    # Standard fields
    if (field ~ /Name|Organization|City|State\/Province|Postal|Country|Phone|Fax|Email/) {
        printf "%s %s,%s\n", section, field, value
    }
}

END {
    # remove final newline
    fflush()
}
' > "$OUT"

# Remove last newline explicitly
truncate -s -1 "$OUT"
