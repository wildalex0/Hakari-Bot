module.exports = (sequelize, DataTypes) => {
    return sequelize.define('generators', {
        generator_id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            AutoIncrement: true

        },
        generator_name: {
            type: DataTypes.TEXT
        },
        base_generation_rate: {
            type: DataTypes.INTEGER
        },
        price: {
            type: DataTypes.INTEGER
        },
        unlock_leaver: {
            type: DataTypes.INTEGER
        },
        
    },{
        timestamp: false
    });
}; 