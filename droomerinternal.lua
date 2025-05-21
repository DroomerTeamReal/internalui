local originalRequest = getgenv().request or function(options) return nil end
getgenv().request = function(options)
    if options.Headers then
        options.Headers['User-Agent'] = 'Droomer'
    else
        options.Headers = {['User-Agent'] = 'Droomer'}
    end
    return originalRequest(options)
end
