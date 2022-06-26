return function( func, ... )
    local throwaway_thread = Instance.new( 'BindableEvent' )
    throwaway_thread.Event:Connect( func )
    throwaway_thread:Fire( ... )
    throwaway_thread:Destroy( )
end
