# information
a) to use this in studio, you could create a `ModuleScript` and put the `src.lua` contents or just make it a function within your own script

b) if you want to use this for exploit environment development, just simply make an http request to the raw `src.lua` contents file or make a function within the script and call it from there

```lua
new_spawn( <function> func, ... )
```

# exploit environment usage
```lua
local new_spawn = loadstring( game:HttpGetAsync( 'https://raw.githubusercontent.com/networktraffic/synchrony/main/src.lua' ) )( )

new_spawn( print, 'hi' )
new_spawn( function( ) 
    print( 'hi' )
end )
```
