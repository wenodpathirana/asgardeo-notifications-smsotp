import ballerinax/trigger.asgardeo;
import ballerina/http;

configurable asgardeo:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener asgardeo:Listener webhookListener =  new(config,httpListener);

service asgardeo:RegistrationService on webhookListener {
  
    remote function onAddUser(asgardeo:AddUserEvent event ) returns error? {
      //Not Implemented
    }
    remote function onConfirmSelfSignup(asgardeo:GenericEvent event ) returns error? {
      //Not Implemented
    }
    remote function onAcceptUserInvite(asgardeo:GenericEvent event ) returns error? {
      //Not Implemented
    }
}
service asgardeo:UserOperationService on webhookListener {
  
    remote function onLockUser(asgardeo:GenericEvent event ) returns error? {
      //Not Implemented
    }
    remote function onUnlockUser(asgardeo:GenericEvent event ) returns error? {
      //Not Implemented
    }
    remote function onUpdateUserCredentials(asgardeo:GenericEvent event ) returns error? {
      //Not Implemented
    }
    remote function onDeleteUser(asgardeo:GenericEvent event ) returns error? {
      //Not Implemented
    }
    remote function onUpdateUserGroup(asgardeo:UserGroupUpdateEvent event ) returns error? {
      //Not Implemented
    }
}
service asgardeo:LoginService on webhookListener {
  
    remote function onLoginSuccess(asgardeo:LoginSuccessEvent event ) returns error? {
      //Not Implemented
    }
}
service asgardeo:NotificationService on webhookListener {
  
    remote function onSmsOtp(asgardeo:SmsOtpNotificationEvent event ) returns error? {
      //Not Implemented
    }
}

service /ignore on httpListener {}