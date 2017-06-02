# KeyclicApiReference.Operation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of the resource according to schema.org: https://schema.org/Operation. | [optional] [default to &#39;Operation&#39;]
**name** | **String** | The name of the operation | [optional] [default to &#39;&#39;]
**description** | **String** | The description of the operation. | [optional] [default to &#39;&#39;]
**state** | **String** | The state of the operation. | [optional] 
**links** | [**OperationLinks**](OperationLinks.md) |  | [optional] 


<a name="StateEnum"></a>
## Enum: StateEnum


* `new` (value: `"new"`)

* `assigned` (value: `"assigned"`)

* `accepted` (value: `"accepted"`)

* `refused` (value: `"refused"`)

* `in_progress` (value: `"in_progress"`)

* `resolved` (value: `"resolved"`)




