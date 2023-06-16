import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-donation',
  templateUrl: './donation.component.html',
  styleUrls: ['./donation.component.css']
})
export class DonationComponent implements OnInit{
  countries = [];
  temp = "temp";
  constructor(private http: HttpClient) {
    this.temp = "temp2"
  }

  ngOnInit() {
    console.log("asd");
    this.temp = "temp3";
    return this.http.get<any>('http://0.0.0.0:3000/cities.json').subscribe(response => {
      this.countries = response.data;
    });
  }
}
