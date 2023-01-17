# asgardeo-notification-smsotp

This repository contains the sample implementation of Asgardeo webhook to process sms otp notifications from Asgardeo. Sample uses the twilio as the SMS Gateway

Smaple implementation (without SMS gateway configuration) to configure the SMS OTP

```
import ballerinax/trigger.asgardeo;
import ballerina/http;

configurable asgardeo:ListenerConfig config = ?;

listener http:Listener httpListener = new (8090);
listener asgardeo:Listener webhookListener = new (config, httpListener);

service asgardeo:NotificationService on webhookListener {

    remote function onSmsOtp(asgardeo:SmsOtpNotificationEvent event) returns error? {
    }
}

service /ignore on httpListener {
}

```