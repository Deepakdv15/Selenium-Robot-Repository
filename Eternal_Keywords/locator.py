import json
import jsonpath

def read_locator_from_json(loctorname):
    file=open(r"C:\python\RobotFramework\JsonFile\Element.json")
    response = json.loads(file.read())
    #response=json.loads("../JsonFile/Element.json")
    value=jsonpath.jsonpath(response,loctorname)
    return value[0]
