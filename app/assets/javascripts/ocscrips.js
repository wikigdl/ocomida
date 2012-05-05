/**
 * Created with JetBrains RubyMine.
 * User: sheko
 * Date: 27/04/12
 * Time: 08:20 PM
 * To change this template use File | Settings | File Templates.
 */
setInterval( function(){
    Gmaps.map.createMarker({
        Lat: Gmaps.map.userLocation.lat(),
        Lng: Gmaps.map.userLocation.lng(),
        rich_marker: null,
        marker_picture: null,
        marker_width: 22,
        marker_height: 32,
        marker_anchor: null,
        shadow_anchor: null,
        shadow_picture: null,
        shadow_width: null,
        shadow_height: null
    })},10000)

