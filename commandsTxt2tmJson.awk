/^#/ { next }
/Commands:/ { type=tolower($1); next }
{
    for ( i=1; i<=NF; i++) 
    { 
        print "{\"name\": \"support.function." type ".cpptraj\", \"match\": \"\\\\b" $i "\\\\b\"}" ","
    }
}
