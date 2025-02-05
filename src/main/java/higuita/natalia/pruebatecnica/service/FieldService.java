package higuita.natalia.pruebatecnica.service;

import higuita.natalia.pruebatecnica.entity.Field;
import higuita.natalia.pruebatecnica.repository.FieldRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class FieldService {

    @Autowired
    private FieldRepository fieldRepository;

    //Create a field
    public Field createFields(Field field){
        return fieldRepository.save(field);
    }

    //Read all fields of the farm
    public List<Field> getAllFields(){
        return fieldRepository.findAll();
    }

    //Read a field of the farm
    public Optional<Field> getField(Long id){
        return fieldRepository.findById(id);
    }

    //Update a field by id
    public Field updateFields(Field fieldId){
        return fieldRepository.save(fieldId);
    }


}
