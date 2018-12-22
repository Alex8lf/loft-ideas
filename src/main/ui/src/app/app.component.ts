import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
import { AppService} from "./app.service";

declare let ymaps: any;

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {

  @ViewChild('mapContainer') mapContainer: ElementRef;

  public map;

  constructor(private appService: AppService) {}

  ngOnInit() {

    ymaps.ready().then(() => {

      this.appService.getStories()
        .subscribe((data: Array<any>) => {

          this.map = new ymaps.Map(this.mapContainer.nativeElement, {
            center: [56.326887, 44.005986],
            zoom: 12,
          });

          data.map((item) => {
            const placemark = new ymaps.Placemark([item.x, item.y], {
              balloonContentHeader: item.name,
              balloonContentBody: item.details,
              balloonContentFooter: item.address,
              hintContent: item.name
            });

            this.map.geoObjects.add(placemark);
          });
        });

    });
  }

}
