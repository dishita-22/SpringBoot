package com.springrest.springrest;

import jakarta.persistence.GenerationType;

public @interface GeneratedValue {

	GenerationType strategy();

}
