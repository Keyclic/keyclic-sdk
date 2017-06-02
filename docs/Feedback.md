# KeyclicApiReference.Feedback

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of the resource. | [optional] [default to &#39;Issue&#39;]
**description** | **String** | The description. | [optional] 
**state** | **String** | The state. | [optional] 
**geo** | [**GeoCoordinates**](GeoCoordinates.md) |  | [optional] 
**createdAt** | **Date** | The creation date. | [optional] 
**links** | [**FeedbackLinks**](FeedbackLinks.md) |  | [optional] 


<a name="StateEnum"></a>
## Enum: StateEnum


* `succeeded_delivery` (value: `"succeeded_delivery"`)

* `failed_delivery` (value: `"failed_delivery"`)

* `pending_review` (value: `"pending_review"`)




