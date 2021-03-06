<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>em</fullName>
        <ccEmails>suri03081988@gmail.com</ccEmails>
        <description>em</description>
        <protected>false</protected>
        <recipients>
            <recipient>suri54321@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/MarketingProductInquiryResponse</template>
    </alerts>
    <alerts>
        <fullName>fanal_alert</fullName>
        <ccEmails>suri03081988@gmail.com</ccEmails>
        <description>fanal.alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>suri54321@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/employee_temp</template>
    </alerts>
    <alerts>
        <fullName>for_edit_record</fullName>
        <ccEmails>suri03081988@gmail.com</ccEmails>
        <description>for edit record</description>
        <protected>false</protected>
        <recipients>
            <recipient>suri03081988@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/MarketingProductInquiryResponse</template>
    </alerts>
    <alerts>
        <fullName>for_record</fullName>
        <description>for record</description>
        <protected>false</protected>
        <recipients>
            <recipient>suri03081988@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>suri54321@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/surendra</template>
    </alerts>
    <alerts>
        <fullName>record_add</fullName>
        <ccEmails>suri03081988@gmail.com</ccEmails>
        <description>record add</description>
        <protected>false</protected>
        <recipients>
            <recipient>suri03081988@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>suri54321@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportSelfServiceNewLoginandPassword</template>
    </alerts>
    <fieldUpdates>
        <fullName>deptloc</fullName>
        <field>location__c</field>
        <formula>&apos;above300location&apos;</formula>
        <name>deptloc</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>department__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>edit</fullName>
        <field>salary__c</field>
        <name>edit</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>fieldd1</fullName>
        <field>e_name__c</field>
        <name>fieldd1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update</fullName>
        <field>salary__c</field>
        <name>update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
