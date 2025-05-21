local originalRequest = getgenv().request or function(options) return nil end
getgenv().request = function(options)
    if options.Headers then
        options.Headers['User-Agent'] = 'Droomer/2.0.0'
    else
        options.Headers = {['User-Agent'] = 'Droomer/2.0.0'}
    end
    return originalRequest(options)
end
