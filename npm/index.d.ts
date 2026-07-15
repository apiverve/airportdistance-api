declare module '@apiverve/airportdistance' {
  export interface airportdistanceOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface airportdistanceResponse {
    status: string;
    error: string | null;
    data: AirportDistanceData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface AirportDistanceData {
      distanceMiles:         number | null;
      distanceKM:            number | null;
      distanceNauticalMiles: number | null;
      estimatedFlightTime:   null | string;
      timezoneDiffHours:     number | null;
      bearing:               number | null;
      direction:             null | string;
      isInternational:       boolean | null;
      carbonEstimateKg:      number | null;
      airport1:              Airport;
      airport2:              Airport;
  }
  
  interface Airport {
      name:      null | string;
      iata:      null | string;
      icao:      null | string;
      city:      null | string;
      state:     null | string;
      country:   null | string;
      elevation: number | null;
      latitude:  number | null;
      longitude: number | null;
      timezone:  null | string;
  }

  export default class airportdistanceWrapper {
    constructor(options: airportdistanceOptions);

    execute(callback: (error: any, data: airportdistanceResponse | null) => void): Promise<airportdistanceResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: airportdistanceResponse | null) => void): Promise<airportdistanceResponse>;
    execute(query?: Record<string, any>): Promise<airportdistanceResponse>;
  }
}
