#==========================================
# Debug mode
#==========================================
DEBUG = true
# DEBUG = false


#==========================================
# Default variables
#==========================================
window.countdown = Date.now()
window.requesting = false
isAndroid = /Android/i.test(navigator.userAgent)


#==========================================
# Default helper
#==========================================
xx = (x) -> DEBUG && console.log x
float = (val) -> parseFloat val.replace 'px', ''
headerTo = (path) -> window.location = path
focusFirstInput = -> $('form').find('input[type="text"], textarea').first().focus()
detectBrowserLang = -> language = navigator.languages and navigator.languages[0] or navigator.language or navigator.userLanguage

detectInFBApp = ->
  ua = navigator.userAgent or navigator.vendor or window.opera
  return ua.indexOf('FBAN') > -1 or ua.indexOf('FBAV') > -1

refreshOGData = (url) ->
  $.ajax
    url: 'https://graph.facebook.com'
    type: 'post'
    data:
      id: url
      scrape: 'true'
    dataType: 'json'


#==========================================
# Browser check
#==========================================
isMobile = ->
  if navigator.userAgent.match(/Android/i) or navigator.userAgent.match(/webOS/i) or navigator.userAgent.match(/iPhone/i) or navigator.userAgent.match(/iPod/i) or navigator.userAgent.match(/iPad/i) or navigator.userAgent.match(/BlackBerry/) then return true else return false

isIE = ->
  return if navigator.userAgent.indexOf('MSIE ') > 0 or ! !navigator.userAgent.match(/Trident.*rv\:11\./) then true else false

isSafari = ->
  ua = navigator.userAgent.toLowerCase()
  if ua.indexOf('safari') != -1
    return if ua.indexOf('chrome') > -1 then false else true
  else
    return false

isFirefox = ->
  navigator.userAgent.toLowerCase().indexOf('firefox') > -1

isMobileChrome = ->
  return if navigator.userAgent.match('CriOS') then true else false


#==========================================
# Events
#==========================================
window.onload = ->
  $('body').addClass 'loaded'

$ ->
  # dotdotdot
  $('.ddd').dotdotdot()
