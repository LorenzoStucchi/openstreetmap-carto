@kerb-size:	     10;
@obstacle-size:	 15;

#kerbs [zoom >= 17]{
	marker-file: url('symbols/barrier/kerb_round.svg');
	marker-width: @kerb-size;
	marker-clip: false;
	
	[kerb = 'flush']{
		marker-fill: green;

		[tactile_paving = 'yes']{
			marker-fill: lime;
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
