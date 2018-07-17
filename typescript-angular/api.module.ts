import { NgModule, ModuleWithProviders, SkipSelf, Optional } from '@angular/core';
import { Configuration } from './configuration';
import { HttpClient } from '@angular/common/http';


import { AnalyticService } from './api/analytic.service';
import { ApplicationService } from './api/application.service';
import { AssignService } from './api/assign.service';
import { BusinessActivityService } from './api/businessActivity.service';
import { CategoryService } from './api/category.service';
import { ChangeService } from './api/change.service';
import { CommentService } from './api/comment.service';
import { ContributionService } from './api/contribution.service';
import { DelegateService } from './api/delegate.service';
import { DeviceService } from './api/device.service';
import { ExportService } from './api/export.service';
import { FacebookService } from './api/facebook.service';
import { FeedbackService } from './api/feedback.service';
import { ImageService } from './api/image.service';
import { IssueService } from './api/issue.service';
import { LogService } from './api/log.service';
import { LoginService } from './api/login.service';
import { LogoService } from './api/logo.service';
import { MemberService } from './api/member.service';
import { MembershipService } from './api/membership.service';
import { OperationService } from './api/operation.service';
import { OrganizationService } from './api/organization.service';
import { PersonService } from './api/person.service';
import { PlaceService } from './api/place.service';
import { RegisterService } from './api/register.service';
import { RelationshipService } from './api/relationship.service';
import { ReportService } from './api/report.service';
import { ResetService } from './api/reset.service';
import { StateService } from './api/state.service';
import { TrackingService } from './api/tracking.service';
import { TransitionService } from './api/transition.service';
import { WebhookService } from './api/webhook.service';

@NgModule({
  imports:      [],
  declarations: [],
  exports:      [],
  providers: [
    AnalyticService,
    ApplicationService,
    AssignService,
    BusinessActivityService,
    CategoryService,
    ChangeService,
    CommentService,
    ContributionService,
    DelegateService,
    DeviceService,
    ExportService,
    FacebookService,
    FeedbackService,
    ImageService,
    IssueService,
    LogService,
    LoginService,
    LogoService,
    MemberService,
    MembershipService,
    OperationService,
    OrganizationService,
    PersonService,
    PlaceService,
    RegisterService,
    RelationshipService,
    ReportService,
    ResetService,
    StateService,
    TrackingService,
    TransitionService,
    WebhookService ]
})
export class ApiModule {
    public static forRoot(configurationFactory: () => Configuration): ModuleWithProviders {
        return {
            ngModule: ApiModule,
            providers: [ { provide: Configuration, useFactory: configurationFactory } ]
        };
    }

    constructor( @Optional() @SkipSelf() parentModule: ApiModule,
                 @Optional() http: HttpClient) {
        if (parentModule) {
            throw new Error('ApiModule is already loaded. Import in your base AppModule only.');
        }
        if (!http) {
            throw new Error('You need to import the HttpClientModule in your AppModule! \n' +
            'See also https://github.com/angular/angular/issues/20575');
        }
    }
}
