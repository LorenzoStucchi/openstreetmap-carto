@def-size: 10;

#kerbs [zoom >= 17]{
	[kerb = 'flush']{
		marker-fill: green;
		marker-type: ellipse;
		marker-width: @def-size;
		marker-clip: false;
		}
	[kerb = 'lowered']{
		marker-fill: orange;
		marker-type: ellipse;
		marker-width: @def-size;
		marker-clip: false;
		}
	[kerb = 'raised']{
		marker-fill: red;
		marker-type: ellipse;
		marker-width: @def-size;
		marker-clip: false;
		}
}