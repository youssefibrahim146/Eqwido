/* import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class StoreMap extends StatefulWidget {
  @override
  _StoreMapState createState() => _StoreMapState();
}

class _StoreMapState extends State<StoreMap> {
  late GoogleMapController _mapController;
  late LocationData _currentLocation;
  List<Marker> _markers = [];

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    final location = Location();
    _currentLocation = await location.getLocation();
    _searchStores();
  }

  Future<void> _searchStores() async {
    final mapsService = GoogleMapsFlutter.create();
    final storesResponse = await mapsService.searchNearbyWithRadius(
      Location(_currentLocation.latitude, _currentLocation.longitude),
       5000,// search radius in meters
      type: 'store',
    );
    setState(() {
      _markers = storesResponse.results
          .map((result) => Marker(
                markerId: MarkerId(result.placeId),
                position:
                    LatLng(result.geometry.location.lat, result.geometry.location.lng),
                infoWindow: InfoWindow(title: result.name, snippet: result.vicinity),
              ))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stores Near Me')),
      body: _currentLocation == null
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
              onMapCreated: (controller) => _mapController = controller,
              initialCameraPosition: CameraPosition(
                target: LatLng(_currentLocation.latitude!, _currentLocation.longitude!),
                zoom: 15,
              ),
              markers: Set<Marker>.of(_markers),
            ),
    );
  }
} */