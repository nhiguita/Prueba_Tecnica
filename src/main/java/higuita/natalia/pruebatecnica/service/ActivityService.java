package higuita.natalia.pruebatecnica.service;

import higuita.natalia.pruebatecnica.entity.Activity;
import higuita.natalia.pruebatecnica.repository.ActivityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ActivityService {

    @Autowired
    private ActivityRepository activityRepository;

    //Create an activity
    public Activity createactivity(Activity activity){
        return activityRepository.save(activity);
    }

    //Read all activities of the farmers
    public List<Activity> getAllActivities(){
        return activityRepository.findAll();
    }

    //Read an activity by id
    public Optional<Activity> getActivity(Long id){
        return activityRepository.findById(id);

    }
    //Update an activity by id
    public Activity updateActivity(Activity activityId){
        return activityRepository.save(activityId);
    }

}
