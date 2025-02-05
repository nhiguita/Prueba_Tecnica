package higuita.natalia.pruebatecnica.controller;

import higuita.natalia.pruebatecnica.entity.Activity;
import higuita.natalia.pruebatecnica.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("agrotrack/activities")
public class ActivityController {

    @Autowired
    private ActivityService activityService;

    //READ
    @GetMapping
    public List<Activity> getActivities(){
        return activityService.getAllActivities();
    }


    //READ BY ID
    @GetMapping("/find/{id}")
    public Optional<Activity> getActivity(@PathVariable Long id){
        return activityService.getActivity(id);
    }

    //CREATE
    @PostMapping
    public Activity createActivity(@RequestBody Activity activity){
        return activityService.createactivity(activity);
    }

    //UPDATE
    @PostMapping("/update/{activityId}")
    public Activity updateActivity(@RequestBody Activity activity, @PathVariable Long activityId){
        activity.setActivityId(activityId);
        return activityService.updateActivity(activity);
    }

}
