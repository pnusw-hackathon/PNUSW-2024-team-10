package com.example.hackdemo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TourSpotDTO {
    private Long id;
    private String name;
    private Double xCoordinate;
    private Double yCoordinate;
}