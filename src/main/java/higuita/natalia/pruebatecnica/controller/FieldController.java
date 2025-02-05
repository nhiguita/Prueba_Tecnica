package higuita.natalia.pruebatecnica.controller;

import higuita.natalia.pruebatecnica.entity.Activity;
import higuita.natalia.pruebatecnica.entity.Field;
import higuita.natalia.pruebatecnica.service.ActivityService;
import higuita.natalia.pruebatecnica.service.FieldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("agrotrack/fields")
public class FieldController {
    @Autowired
    private FieldService fieldService;

    //READ
    @GetMapping
    public List<Field> getFields(){
        return fieldService.getAllFields();
    }


    //READ BY ID
    @GetMapping("/find/{id}")
    public Optional<Field> getField(@PathVariable Long id){
        return fieldService.getField(id);
    }

    //CREATE
    @PostMapping
    public Field createField(@RequestBody Field field){
        return fieldService.createFields(field);
    }

    //UPDATE
    @PostMapping("/update/{id}")
    public Field updateField(@RequestBody Field field, @PathVariable Long id){
        field.setFieldId(id);
        return fieldService.updateFields(field);
    }

}
