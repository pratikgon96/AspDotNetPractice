﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebForm.CalculatorService01 {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.CollectionDataContractAttribute(Name="ArrayOfString", Namespace="http://tempuri.org/", ItemName="string")]
    [System.SerializableAttribute()]
    public class ArrayOfString : System.Collections.Generic.List<string> {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Customer", Namespace="http://tempuri.org/")]
    [System.SerializableAttribute()]
    public partial class Customer : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        private int IdField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string NameField;
        
        private long ContactField;
        
        private System.DateTime DOBField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(IsRequired=true)]
        public int Id {
            get {
                return this.IdField;
            }
            set {
                if ((this.IdField.Equals(value) != true)) {
                    this.IdField = value;
                    this.RaisePropertyChanged("Id");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false)]
        public string Name {
            get {
                return this.NameField;
            }
            set {
                if ((object.ReferenceEquals(this.NameField, value) != true)) {
                    this.NameField = value;
                    this.RaisePropertyChanged("Name");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(IsRequired=true, Order=2)]
        public long Contact {
            get {
                return this.ContactField;
            }
            set {
                if ((this.ContactField.Equals(value) != true)) {
                    this.ContactField = value;
                    this.RaisePropertyChanged("Contact");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute(IsRequired=true, Order=3)]
        public System.DateTime DOB {
            get {
                return this.DOBField;
            }
            set {
                if ((this.DOBField.Equals(value) != true)) {
                    this.DOBField = value;
                    this.RaisePropertyChanged("DOB");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="CalculatorService01.CalculatorServicesSoap")]
    public interface CalculatorServicesSoap {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Add", ReplyAction="*")]
        int Add(int num1, int num2);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Add", ReplyAction="*")]
        System.Threading.Tasks.Task<int> AddAsync(int num1, int num2);
        
        // CODEGEN: Generating message contract since element name GetResultsResult from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetResults", ReplyAction="*")]
        WebForm.CalculatorService01.GetResultsResponse GetResults(WebForm.CalculatorService01.GetResultsRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetResults", ReplyAction="*")]
        System.Threading.Tasks.Task<WebForm.CalculatorService01.GetResultsResponse> GetResultsAsync(WebForm.CalculatorService01.GetResultsRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Sub", ReplyAction="*")]
        int Sub(int num1, int num2);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Sub", ReplyAction="*")]
        System.Threading.Tasks.Task<int> SubAsync(int num1, int num2);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Mult", ReplyAction="*")]
        int Mult(int num1, int num2);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Mult", ReplyAction="*")]
        System.Threading.Tasks.Task<int> MultAsync(int num1, int num2);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Div", ReplyAction="*")]
        int Div(int num1, int num2);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Div", ReplyAction="*")]
        System.Threading.Tasks.Task<int> DivAsync(int num1, int num2);
        
        // CODEGEN: Generating message contract since element name GetCustomerByIdResult from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetCustomerById", ReplyAction="*")]
        WebForm.CalculatorService01.GetCustomerByIdResponse GetCustomerById(WebForm.CalculatorService01.GetCustomerByIdRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetCustomerById", ReplyAction="*")]
        System.Threading.Tasks.Task<WebForm.CalculatorService01.GetCustomerByIdResponse> GetCustomerByIdAsync(WebForm.CalculatorService01.GetCustomerByIdRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class GetResultsRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="GetResults", Namespace="http://tempuri.org/", Order=0)]
        public WebForm.CalculatorService01.GetResultsRequestBody Body;
        
        public GetResultsRequest() {
        }
        
        public GetResultsRequest(WebForm.CalculatorService01.GetResultsRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute()]
    public partial class GetResultsRequestBody {
        
        public GetResultsRequestBody() {
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class GetResultsResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="GetResultsResponse", Namespace="http://tempuri.org/", Order=0)]
        public WebForm.CalculatorService01.GetResultsResponseBody Body;
        
        public GetResultsResponse() {
        }
        
        public GetResultsResponse(WebForm.CalculatorService01.GetResultsResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class GetResultsResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public WebForm.CalculatorService01.ArrayOfString GetResultsResult;
        
        public GetResultsResponseBody() {
        }
        
        public GetResultsResponseBody(WebForm.CalculatorService01.ArrayOfString GetResultsResult) {
            this.GetResultsResult = GetResultsResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class GetCustomerByIdRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="GetCustomerById", Namespace="http://tempuri.org/", Order=0)]
        public WebForm.CalculatorService01.GetCustomerByIdRequestBody Body;
        
        public GetCustomerByIdRequest() {
        }
        
        public GetCustomerByIdRequest(WebForm.CalculatorService01.GetCustomerByIdRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class GetCustomerByIdRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=0)]
        public int id;
        
        public GetCustomerByIdRequestBody() {
        }
        
        public GetCustomerByIdRequestBody(int id) {
            this.id = id;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class GetCustomerByIdResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="GetCustomerByIdResponse", Namespace="http://tempuri.org/", Order=0)]
        public WebForm.CalculatorService01.GetCustomerByIdResponseBody Body;
        
        public GetCustomerByIdResponse() {
        }
        
        public GetCustomerByIdResponse(WebForm.CalculatorService01.GetCustomerByIdResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class GetCustomerByIdResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public WebForm.CalculatorService01.Customer GetCustomerByIdResult;
        
        public GetCustomerByIdResponseBody() {
        }
        
        public GetCustomerByIdResponseBody(WebForm.CalculatorService01.Customer GetCustomerByIdResult) {
            this.GetCustomerByIdResult = GetCustomerByIdResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface CalculatorServicesSoapChannel : WebForm.CalculatorService01.CalculatorServicesSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class CalculatorServicesSoapClient : System.ServiceModel.ClientBase<WebForm.CalculatorService01.CalculatorServicesSoap>, WebForm.CalculatorService01.CalculatorServicesSoap {
        
        public CalculatorServicesSoapClient() {
        }
        
        public CalculatorServicesSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public CalculatorServicesSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public CalculatorServicesSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public CalculatorServicesSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public int Add(int num1, int num2) {
            return base.Channel.Add(num1, num2);
        }
        
        public System.Threading.Tasks.Task<int> AddAsync(int num1, int num2) {
            return base.Channel.AddAsync(num1, num2);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        WebForm.CalculatorService01.GetResultsResponse WebForm.CalculatorService01.CalculatorServicesSoap.GetResults(WebForm.CalculatorService01.GetResultsRequest request) {
            return base.Channel.GetResults(request);
        }
        
        public WebForm.CalculatorService01.ArrayOfString GetResults() {
            WebForm.CalculatorService01.GetResultsRequest inValue = new WebForm.CalculatorService01.GetResultsRequest();
            inValue.Body = new WebForm.CalculatorService01.GetResultsRequestBody();
            WebForm.CalculatorService01.GetResultsResponse retVal = ((WebForm.CalculatorService01.CalculatorServicesSoap)(this)).GetResults(inValue);
            return retVal.Body.GetResultsResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<WebForm.CalculatorService01.GetResultsResponse> WebForm.CalculatorService01.CalculatorServicesSoap.GetResultsAsync(WebForm.CalculatorService01.GetResultsRequest request) {
            return base.Channel.GetResultsAsync(request);
        }
        
        public System.Threading.Tasks.Task<WebForm.CalculatorService01.GetResultsResponse> GetResultsAsync() {
            WebForm.CalculatorService01.GetResultsRequest inValue = new WebForm.CalculatorService01.GetResultsRequest();
            inValue.Body = new WebForm.CalculatorService01.GetResultsRequestBody();
            return ((WebForm.CalculatorService01.CalculatorServicesSoap)(this)).GetResultsAsync(inValue);
        }
        
        public int Sub(int num1, int num2) {
            return base.Channel.Sub(num1, num2);
        }
        
        public System.Threading.Tasks.Task<int> SubAsync(int num1, int num2) {
            return base.Channel.SubAsync(num1, num2);
        }
        
        public int Mult(int num1, int num2) {
            return base.Channel.Mult(num1, num2);
        }
        
        public System.Threading.Tasks.Task<int> MultAsync(int num1, int num2) {
            return base.Channel.MultAsync(num1, num2);
        }
        
        public int Div(int num1, int num2) {
            return base.Channel.Div(num1, num2);
        }
        
        public System.Threading.Tasks.Task<int> DivAsync(int num1, int num2) {
            return base.Channel.DivAsync(num1, num2);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        WebForm.CalculatorService01.GetCustomerByIdResponse WebForm.CalculatorService01.CalculatorServicesSoap.GetCustomerById(WebForm.CalculatorService01.GetCustomerByIdRequest request) {
            return base.Channel.GetCustomerById(request);
        }
        
        public WebForm.CalculatorService01.Customer GetCustomerById(int id) {
            WebForm.CalculatorService01.GetCustomerByIdRequest inValue = new WebForm.CalculatorService01.GetCustomerByIdRequest();
            inValue.Body = new WebForm.CalculatorService01.GetCustomerByIdRequestBody();
            inValue.Body.id = id;
            WebForm.CalculatorService01.GetCustomerByIdResponse retVal = ((WebForm.CalculatorService01.CalculatorServicesSoap)(this)).GetCustomerById(inValue);
            return retVal.Body.GetCustomerByIdResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<WebForm.CalculatorService01.GetCustomerByIdResponse> WebForm.CalculatorService01.CalculatorServicesSoap.GetCustomerByIdAsync(WebForm.CalculatorService01.GetCustomerByIdRequest request) {
            return base.Channel.GetCustomerByIdAsync(request);
        }
        
        public System.Threading.Tasks.Task<WebForm.CalculatorService01.GetCustomerByIdResponse> GetCustomerByIdAsync(int id) {
            WebForm.CalculatorService01.GetCustomerByIdRequest inValue = new WebForm.CalculatorService01.GetCustomerByIdRequest();
            inValue.Body = new WebForm.CalculatorService01.GetCustomerByIdRequestBody();
            inValue.Body.id = id;
            return ((WebForm.CalculatorService01.CalculatorServicesSoap)(this)).GetCustomerByIdAsync(inValue);
        }
    }
}
