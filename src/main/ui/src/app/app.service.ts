import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class AppService {

  constructor(private http: HttpClient) { }

  storiesUrl = '/api/stories';

  getStories() {
    return this.http.get(this.storiesUrl);
  }
}
