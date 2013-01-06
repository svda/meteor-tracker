class GoogleAnalyticsTracker

  constructor: (options) ->
    @_gaq = @_gaq or []

    ga = document.createElement('script')
    ga.type = 'text/javascript'
    ga.async = true
    ga.src = (if document.location.protocol == 'https:' then 'https://ssl' else 'http://www') + '.google-analytics.com/ga.js'
    s = document.getElementsByTagName('script')[0]
    s.parentNode.insertBefore(ga, s)

    @_gaq.push(['_setAccount', options.account])

  track: (identifier, parameters) ->
    @_gaq.push(['_trackEvent', identifier, 'clicked', parameters])
    console.log identifier

  identify: () ->