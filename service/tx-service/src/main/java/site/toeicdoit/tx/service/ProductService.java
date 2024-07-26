package site.toeicdoit.tx.service;


import site.toeicdoit.tx.domain.vo.Messenger;
import site.toeicdoit.tx.domain.dto.ProductDto;
import site.toeicdoit.tx.domain.model.ProductModel;

public interface ProductService {
    default ProductModel dtoToEntity(ProductDto dto) {
        return ProductModel.builder()
                .id(dto.getId())
                .name(dto.getName())
                .price(dto.getPrice())
                .description(dto.getDescription())
                .duration(dto.getDuration())
                .build();
    }

    Messenger payment(ProductDto dto);
}
