module.exports = (sequelize, DataTypes) => {
    return sequelize.define('users', {
        user_id: {
            type: DataTypes.INTEGER,
            primaryKey: true
        },
        username: {
            type: DataTypes.TEXT
        },
        current_balance: {
            type: DataTypes.INTEGER
        },
        prestige_multiplier: {
            type: DataTypes.REAL
        },
        last_active: {
            //Technically type timestamp but due to SQLITE being used it is TEXT
            type: DataTypes.TEXT
        }
    },{
        timestamp: false
    });
};