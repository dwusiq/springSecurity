package com.wusiq.Dto;

/**
 * 新增用户页面入参实体类
 */
public class ReqInsertProduceDto {
    private String produceName;
    private Integer producePrice;

    public String getProduceName() {
        return produceName;
    }

    public void setProduceName(String produceName) {
        this.produceName = produceName;
    }

    public Integer getProducePrice() {
        return producePrice;
    }

    public void setProducePrice(Integer producePrice) {
        this.producePrice = producePrice;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("{");
        sb.append("\"produceName\":\"")
                .append(produceName).append('\"');
        sb.append(",\"producePrice\":")
                .append(producePrice);
        sb.append('}');
        return sb.toString();
    }
}
