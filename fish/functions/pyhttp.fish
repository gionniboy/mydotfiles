function pyhttp -d "Start an HTTP server, taking an optional parameter for the port number"
    if test -n "$argv[1]"
        set HTTPPORT $argv[1]
    else
        set HTTPPORT 8000
    end
    python -m SimpleHTTPServer $HTTPPORT
end