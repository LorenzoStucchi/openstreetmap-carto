@kerb-size:	     	10;
@obstacle-size:	 	15;
@parking-icon-size: 10;
@access_shop-size: 	40;

#kerbs [zoom >= 17]{
	marker-file: url('symbols/barrier/kerb_round.svg');
	marker-width: @kerb-size;
	marker-clip: false;
	
	[kerb = 'flush']{
		marker-fill: green;

		[tactile_paving = 'yes']{
			marker-fill: lime;
		}
		[tactile_paving = 'no']{
			marker-fill: darkorange;
		}
	}

	[kerb = 'lowered']{
		marker-fill: darkorange;
	}

	[kerb = 'raised']{
		marker-fill: red;
	}

	[zoom >= 19]{
		marker-width: 1.5*@kerb-size;
	}

	[zoom >= 21]{
		marker-width: 2*@kerb-size;
	}
}

#obstacle_wheelchair [zoom >= 17]{
	marker-file: url('symbols/barrier/danger_wheelchair.svg');
	marker-fill: darkorange;
	marker-width: @obstacle-size;
	marker-clip: false;
	marker-allow-overlap: true;

	[amenity = "waste_basket"],
	[barrier = "bollard"],
	[barrier = "block"],
	[natural = "tree"]{
		marker-opacity: 0.8;
		marker-fill: orange;
	}

	[zoom >= 19]{
		marker-width: 1.5*@obstacle-size;
	}

	[zoom >= 21]{
		marker-width: 2*@obstacle-size;
	}
}

#parking_wheelchair[zoom >= 17]{
	[disabled = 'designated'],
	[parking_space = 'disabled']{
		marker-file: url('symbols/barrier/wheelchair_parking.svg');
	    marker-fill: @transportation-icon;
	    marker-width: @parking-icon-size;

		[zoom >= 20]{
			marker-width: 1.2*@parking-icon-size;
		}
	}
}

#accessible_shop[zoom >= 19]{
	marker-file: url('symbols/amenity/wheelchair_icon.svg');
	marker-clip: false;
	marker-width: @access_shop-size;
	marker-allow-overlap: true;

	[wheelchair = 'yes']{
		marker-fill: green;
	}

	[wheelchair = 'limited']{
		marker-fill: darkorange;
	}

	[wheelchair = 'no']{
		marker-fill: red;
	}
}