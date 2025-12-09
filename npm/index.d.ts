declare module '@apiverve/airportdistance' {
  export interface airportdistanceOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface airportdistanceResponse {
    status: string;
    error: string | null;
    data: AirportDistanceData;
    code?: number;
  }


  interface AirportDistanceData {
      distanceMiles: number;
      distanceKM:    number;
      airport1:      Airport;
      airport2:      Airport;
  }
  
  interface Airport {
      name:      string;
      iata:      string;
      icao:      string;
      city:      string;
      state:     string;
      country:   string;
      elevation: number;
      latitude:  number;
      longitude: number;
  }

  export default class airportdistanceWrapper {
    constructor(options: airportdistanceOptions);

    execute(callback: (error: any, data: airportdistanceResponse | null) => void): Promise<airportdistanceResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: airportdistanceResponse | null) => void): Promise<airportdistanceResponse>;
    execute(query?: Record<string, any>): Promise<airportdistanceResponse>;
  }
}
